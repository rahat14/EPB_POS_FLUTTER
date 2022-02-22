import 'package:epb_pos_flutter/database/app_database.dart';
import 'package:epb_pos_flutter/services/local_services.dart';
import 'package:epb_pos_flutter/utils/utils.dart';
import 'package:get/get.dart';

class DatabaseController extends GetxController {
  var offlineProducts =
      List<Product>.empty().obs; // init the empty list  with null safety
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

  void addListOFProduct(List<ProductsCompanion> convertedList) {
    database.insertProducts(convertedList);
    print("data added locally ");
  }

  void deleteAllFromProductTable() {
    database.deleteAllProduct();
  }

  void addProduct(Product product) {
    database.insertProduct(product);
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
  void resetSearch(){
    offlineProducts.value = mainList;
  }

  void getRunningCartProducts() async {
    var list = await database.getAllProducts();
    offlineProducts.value = list;
  }
}
