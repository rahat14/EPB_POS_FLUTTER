import 'package:epb_pos_flutter/database/app_database.dart';
import 'package:get/get.dart';
import '../utils/utils.dart';


class DatabaseController extends GetxController {
  var offlineProducts = List<Product>.empty().obs; // init the empty list  with null safety
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
  
  void addProductToRunningCart(Product item, int  qty ){
    /*
     covert model to ProductCOmpaniton
     */
    final OfflineItem = RunningCartProductCompanion.insert(onlineID: item.onlineID.toString(),
        name: item.name, code: item.code, customCode: item.customCode, typeId: item.typeId,
        purchasePrice: item.purchasePrice, salePrice: item.salePrice, cartQty: qty);
    database.insertProductInRunningCart(OfflineItem);
    HelperClass.showToast("Item Added To Cart...");
  }
  void getRunningCartProducts() async {
    var list = await database.getAllProducts();
    offlineProducts.value = list;
  }
}
