import 'package:epb_pos_flutter/database/app_database.dart';
import 'package:epb_pos_flutter/services/local_services.dart';
import 'package:epb_pos_flutter/utils/utils.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  AppDatabase database = LocalService().getDatabase();
  var cartProducts = List<RunningCartProductData>.empty().obs;
  double totalValue = 0.0;

  @override
  void onInit() {
    super.onInit();
    fetchCartProduct();
  }

  void fetchCartProduct() async {
    var list = await database.getAllRunningCartProducts();
    cartProducts.value = list;
    print(" cart list size -> ${list.length}");
    //  CountTotal(list);
  }

  void updateCartSystem(int qty, RunningCartProductData item, int index) {
    var newItem = item.copyWith(cartQty: qty);
    try {
      database.updateProductInRunningCart(newItem);
    } catch (e) {
      HelperClass.showToast("Error : ${e.toString()}", isError: true);
    } finally {
      cartProducts[index] = newItem;
      HelperClass.showToast("Qty Updated !!");
    }
  }

  void deleteCartItem(int index, RunningCartProductData item) {
    try {
      database.deleteRunningCartItemById(item.id);
    } catch (e) {
      HelperClass.showToast("Error : ${e.toString()}", isError: true);
    } finally {
      cartProducts.removeAt(index);
      HelperClass.showToast("Item Removed");
    }
  }

  double countTotal(List<RunningCartProductData> list) {
    totalValue = 0;
    for (var item in list) {
      var price = double.parse(item.salePrice);
      var qty = item.cartQty;
      double totalPrice = price * qty;
      totalValue = (totalValue + totalPrice);
    }
    return totalValue;
  }
}
