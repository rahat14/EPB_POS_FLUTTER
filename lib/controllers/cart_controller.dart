import 'package:epb_pos_flutter/database/app_database.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var database = AppDatabase();
  var cartProducts = List<RunningCartProductData>.empty().obs;

  @override
  void onInit() {
    super.onInit();
    fetchCartProduct();
  }

  void fetchCartProduct() async {
    var list = await database.getAllRunningCartProducts();
    cartProducts.value = list;
    print(" cart list size -> ${list.length}");
  }
}
