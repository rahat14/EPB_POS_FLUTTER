import 'package:epb_pos_flutter/database/app_database.dart';

class LocalService {
  static const _authority = "www.demo.easyposbd.com";
  static const _path = "/EasyPOSBD_API/items";
  static const _params = {};

  static final client = AppDatabase();

  getDatabase() {
    return client;
  }
}
