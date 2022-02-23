import 'package:epb_pos_flutter/database/app_database.dart';
import 'package:epb_pos_flutter/services/local_services.dart';
import 'package:epb_pos_flutter/utils/utils.dart';
import 'package:get/get.dart';

class DatabaseController extends GetxController {
  var offlineProducts =
      List<Product>.empty().obs; // init the empty list  with null safety
  AppDatabase database = LocalService().getDatabase();
  List<Product> mainList = [];

  // @override
  // void onInit() {
  //   super.onInit();
  //   // fetchProducts();
  // }

  void addListOFProduct(List<ProductsCompanion> convertedList) async {
    await database.insertProducts(convertedList);
    HelperClass.showToast(
        "Sync Completed. ${convertedList.length.toString()} products added");
  }

  void deleteAllFromProductTable() {
    database.deleteAllProduct();
  }

  void addProduct(Product product) {
    database.insertProduct(product);
  }
}
