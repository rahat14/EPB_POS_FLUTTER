import 'package:epb_pos_flutter/database/app_database.dart';
import 'package:epb_pos_flutter/models/product_models.dart';
import 'package:http/http.dart' as http;

class LocalService {
  static const _authority = "www.demo.easyposbd.com";
  static const _path = "/EasyPOSBD_API/items";
  static const _params = {};

  static var client = AppDatabase();


  getDatabase(){

    return client;

  }

}


