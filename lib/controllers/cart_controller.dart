import 'package:epb_pos_flutter/database/app_database.dart';
import 'package:epb_pos_flutter/services/local_services.dart';
import 'package:epb_pos_flutter/utils/utils.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';

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

  void insertSellDetails() async{
    var cart_id = const Uuid().v1();
    var details = SoldCartDetailsCompanion.insert(cartId: cart_id, name: "Walk In Customer") ;
    try{
      await database.insertCartDetailsOnSoldCartDetails(details) ;
    }catch(e){
      HelperClass.showToast("Error : $e", isError: true ) ;
    }finally{
     insertSoldItems(cart_id);
    }
  }

  void insertSoldItems(String id) async{
    List<SoldCartProductsCompanion> list = [] ;
    SoldCartProductsCompanion soldCartProductsCompanion ;
    for (var item in cartProducts){
      soldCartProductsCompanion = SoldCartProductsCompanion.insert(cartId: id, onlineID: item.onlineID, name: item.name,
          code: item.code, customCode: item.customCode, typeId: item.typeId,
          purchasePrice: item.purchasePrice, salePrice: item.salePrice, cartQty: item.cartQty);
      list.add(soldCartProductsCompanion) ;
    }
    try{
      await database.insertProductsOnSoldCartProducts(list) ;
    }catch(e){
      HelperClass.showToast("Error : $e", isError: true ) ;
    }finally{
      HelperClass.showToast("Sale Added.", isError: false ) ;
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
