import 'package:epb_pos_flutter/models/product_models.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  static const _authority = "www.demo.easyposbd.com";
  static const _path = "/EasyPOSBD_API/items";
  static const _params = {};

  static var client = http.Client();

 static Future<List<Items>?> fetchProducts() async {
    var response = await client.get(Uri.https(_authority, _path));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return ProductModels.fromJson(jsonString).items;
    } else {
      return null;
    }
  }
}
