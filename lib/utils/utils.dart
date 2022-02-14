import 'package:drift/drift.dart';
import 'package:epb_pos_flutter/models/product_models.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sn_progress_dialog/sn_progress_dialog.dart';

import '../database/app_database.dart';

class HelperClass {
  static ProgressDialog getProgressDiagloue(context) {
    ProgressDialog pd = ProgressDialog(context: context);
    return pd;
  }

  static showHideProgress(ProgressDialog pd, bool isShow) {
    print("this is NULL $isShow");
    if (isShow) {
      pd.show(
          max: 100,
          msg: "Syncing Data...",
          progressType: ProgressType.valuable);
    } else {
      pd.close();
    }
  }

  static ProductsCompanion ObjectTypeCoverter(Items item) {
    final OfflineItem = ProductsCompanion(
        onlineID: Value(item.id.toString()),
        name: Value(item.name.toString()),
        code: Value(item.code.toString()),
        customCode: Value(item.customCode.toString()),
        typeId: Value(item.typeId.toString()),
        categoryId: Value(item.categoryId.toString()),
        purchasePrice: Value(item.purchasePrice.toString()),
        salePrice: Value(item.salePrice.toString()),
        brandId: Value(item.brandId.toString()),
        color: Value(item.color.toString()),
        size: Value(item.size.toString()),
        waight: Value(item.waight.toString()),
        alertQuantity: Value(item.alertQuantity.toString()),
        vatId: Value(item.vatId.toString()),
        unitId: Value(item.unitId.toString()),
        userId: Value(item.userId.toString()),
        companyId: Value(item.companyId.toString()),
        availableForSubscription:
            Value(item.availableForSubscription.toString()),
        featuredItem: Value(item.featuredItem.toString()),
        pcOriginalThumb: Value(item.pcOriginalThumb.toString()),
        pcMobileThumb: Value(item.pcMobileThumb.toString()),
        pcTebThumb: Value(item.pcTebThumb.toString()),
        status: Value(item.status.toString()),
        delStatus: Value(item.delStatus.toString()),
        productionItem: Value(item.productionItem.toString()));

    return OfflineItem;
  }

  static showToast(String str) {
    Fluttertoast.showToast(
        msg: str,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
