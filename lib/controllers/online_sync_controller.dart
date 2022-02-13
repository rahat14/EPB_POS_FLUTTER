import 'package:epb_pos_flutter/database/app_database.dart';
import 'package:epb_pos_flutter/models/product_models.dart';
import 'package:get/get.dart';

class SyncController extends GetxController {
  var downloadedProducts =
      List<ProductModels>.empty().obs; // init the empty list  with null safety


  // @override
  // void onInit() {
  //   super.onInit();
  //   fetchProducts();
  // }

  void downloadProductsData() async {


  }


}
