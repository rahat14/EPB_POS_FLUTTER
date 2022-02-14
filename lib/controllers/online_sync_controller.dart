import 'package:epb_pos_flutter/controllers/database_controller.dart';
import 'package:epb_pos_flutter/models/product_models.dart';
import 'package:epb_pos_flutter/services/remote_services.dart';
import 'package:epb_pos_flutter/utils/utils.dart';
import 'package:get/get.dart';

import '../database/app_database.dart';

class SyncController extends GetxController {
  var localDb = DatabaseController();
  var downloadedProducts =
      List<Items>.empty().obs; // init the empty list  with null safety
  var isLoading = false.obs;

  // @override
  // void onInit() {
  //   super.onInit();
  //   fetchProducts();
  // }

  void downloadProductsData() async {
    isLoading(true);
    var products = await RemoteServices.fetchProducts();

    if (products != null) {
      localDb.deleteAllFromProductTable();
      downloadedProducts.value = products;
      convertFunction(products);
      // need to add this list into local database

    } else {
      print("this is NULL ");
    }
  }

  void convertFunction(List<Items> products) {
    var convertedList = List<ProductsCompanion>.empty(growable: true);
    for (var item in products) {
      var convertedItem = HelperClass.ObjectTypeCoverter(item);
      convertedList.add(convertedItem);
    }
    localDb.addListOFProduct(convertedList);
    isLoading(false);
    HelperClass.showToast("Sync Completed...");
  }
}
