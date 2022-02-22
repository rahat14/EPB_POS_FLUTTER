import 'package:epb_pos_flutter/database/app_database.dart';
import 'package:epb_pos_flutter/services/local_services.dart';
import 'package:epb_pos_flutter/utils/utils.dart';
import 'package:get/get.dart';

class DatabaseController extends GetxController {
  var offlineProducts =
      List<Product>.empty().obs; // init the empty list  with null safety

  var allSales = List<SoldCartDetail>.empty().obs;

  var salesHistoryProducts = List<SoldCartProduct>.empty().obs;

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

  void addListOFProduct(List<ProductsCompanion> convertedList) async {
    await  database.insertProducts(convertedList);
    HelperClass.showToast("Sync Completed. ${convertedList.length.toString()} products added") ;
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

  void resetSearch() {
    offlineProducts.value = mainList;
  }

  void getSoldCartProducts(String id ) async {
    var list = await database.getListOfSoldProductByCartId(id);
    salesHistoryProducts.value = list;
  }

  void getSellsHistory() async {
    var list = await database.getAllSellHistory();
    allSales.value = list;
  }

  double countTotal(List<SoldCartProduct> list) {
   double  totalValue = 0.0;
    for (var item in list) {
      var price = double.parse(item.salePrice);
      var qty = item.cartQty;
      double totalPrice = price * qty;
      totalValue = (totalValue + totalPrice);
    }
    return totalValue;
  }
}
