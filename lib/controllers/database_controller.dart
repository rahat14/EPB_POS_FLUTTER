import 'package:epb_pos_flutter/database/app_database.dart';
import 'package:get/get.dart';

class DatabaseController extends GetxController {
  var offlineProducts =
      List<Product>.empty().obs; // init the empty list  with null safety
  var database = AppDatabase();

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    var list = await database.getAllProducts();
    offlineProducts.value = list;
    print(" list size -> ${list.length}");
  }

  void addListOFProduct(List<ProductsCompanion> convertedList) {
    database.insertProducts(convertedList);
    print("data added locally ");
  }
  void deleteAllFromProductTable(){
    database.deleteAllProduct();
  }

  void addProduct(Product product) {
    database.insertProduct(product);
  }
}
