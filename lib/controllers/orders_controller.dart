import 'package:epb_pos_flutter/database/app_database.dart';
import 'package:get/get.dart';

import '../services/local_services.dart';

class OrdersController extends GetxController {
  AppDatabase database = LocalService().getDatabase();
  var salesHistoryProducts = List<SoldCartProduct>.empty().obs;

  var allSales = List<SoldCartDetail>.empty().obs;

  void getSellsHistory() async {
    var list = await database.getAllSellHistory();
    allSales.value = list;
  }

  double countTotal(List<SoldCartProduct> list) {
    double totalValue = 0.0;
    for (var item in list) {
      var price = double.parse(item.salePrice);
      var qty = item.cartQty;
      double totalPrice = price * qty;
      totalValue = (totalValue + totalPrice);
    }
    return totalValue;
  }

  void getSoldCartProducts(String id) async {
    var list = await database.getListOfSoldProductByCartId(id);
    salesHistoryProducts.value = list;
  }
}
