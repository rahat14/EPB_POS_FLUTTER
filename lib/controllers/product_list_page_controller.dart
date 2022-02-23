import 'package:epb_pos_flutter/database/app_database.dart';
import 'package:epb_pos_flutter/services/local_services.dart';
import 'package:get/get.dart';

import '../utils/utils.dart';

class ProductListPageController extends GetxController {
  var offlineProducts = List<Product>.empty().obs;
  List<Product> mainList = [];
  AppDatabase database = LocalService().getDatabase();

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    var list = await database.getAllProducts();
    offlineProducts.value = list;
    mainList = list;
    print(" list size -> ${list.length}");
  }

  void searchProduct(String search) {
    print(" searching for $search");
    List<Product> filteredList = [];
    for (var item in mainList) {
      if (item.name.toLowerCase().contains(search)) {
        filteredList.add(item);
      }
    }
    if (filteredList.isEmpty) {
      HelperClass.showToast("No Item Found Named $search");
    } else {
      offlineProducts.value = filteredList;
    }
  }

  void resetSearch() {
    offlineProducts.value = mainList;
  }

  void addProductToRunningCart(Product item, int qty) {
    /*
     covert model to ProductCOmpaniton
     */
    final OfflineItem = RunningCartProductCompanion.insert(
        onlineID: item.onlineID.toString(),
        name: item.name,
        code: item.code,
        customCode: item.customCode,
        typeId: item.typeId,
        purchasePrice: item.purchasePrice,
        salePrice: item.salePrice,
        cartQty: qty);

    database.insertProductInRunningCart(OfflineItem);
  }
}
