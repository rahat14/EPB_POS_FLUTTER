import 'package:epb_pos_flutter/models/product_models.dart';
import 'package:epb_pos_flutter/services/remote_services.dart';
import 'package:get/get.dart';

class SyncController extends GetxController {
  var downloadedProducts =
      List<Items>.empty().obs; // init the empty list  with null safety

  // @override
  // void onInit() {
  //   super.onInit();
  //   fetchProducts();
  // }

  void downloadProductsData() async {
    var pproducts = await RemoteServices.fetchProducts();

    if (pproducts != null) {
      downloadedProducts.value = pproducts;
      print("this is ${pproducts.length}") ;
    }else {
      print("this is NULL ") ;
    }

  }
}
