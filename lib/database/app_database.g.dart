// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Product extends DataClass implements Insertable<Product> {
  final int id;
  final String onlineID;
  final String name;
  final String code;
  final String customCode;
  final String typeId;
  final String categoryId;
  final String purchasePrice;
  final String salePrice;
  final String brandId;
  final String color;
  final String size;
  final String waight;
  final String alertQuantity;
  final String vatId;
  final String unitId;
  final String userId;
  final String companyId;
  final String availableForSubscription;
  final String featuredItem;
  final String pcOriginalThumb;
  final String pcMobileThumb;
  final String pcTebThumb;
  final String status;
  final String delStatus;
  final String productionItem;
  Product(
      {required this.id,
      required this.onlineID,
      required this.name,
      required this.code,
      required this.customCode,
      required this.typeId,
      required this.categoryId,
      required this.purchasePrice,
      required this.salePrice,
      required this.brandId,
      required this.color,
      required this.size,
      required this.waight,
      required this.alertQuantity,
      required this.vatId,
      required this.unitId,
      required this.userId,
      required this.companyId,
      required this.availableForSubscription,
      required this.featuredItem,
      required this.pcOriginalThumb,
      required this.pcMobileThumb,
      required this.pcTebThumb,
      required this.status,
      required this.delStatus,
      required this.productionItem});
  factory Product.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Product(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      onlineID: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}online_i_d'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      code: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}code'])!,
      customCode: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}custom_code'])!,
      typeId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type_id'])!,
      categoryId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}category_id'])!,
      purchasePrice: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}purchase_price'])!,
      salePrice: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sale_price'])!,
      brandId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}brand_id'])!,
      color: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}color'])!,
      size: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}size'])!,
      waight: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}waight'])!,
      alertQuantity: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}alert_quantity'])!,
      vatId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}vat_id'])!,
      unitId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}unit_id'])!,
      userId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}user_id'])!,
      companyId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}company_id'])!,
      availableForSubscription: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}available_for_subscription'])!,
      featuredItem: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}featured_item'])!,
      pcOriginalThumb: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}pc_original_thumb'])!,
      pcMobileThumb: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}pc_mobile_thumb'])!,
      pcTebThumb: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}pc_teb_thumb'])!,
      status: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}status'])!,
      delStatus: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}del_status'])!,
      productionItem: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}production_item'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['online_i_d'] = Variable<String>(onlineID);
    map['name'] = Variable<String>(name);
    map['code'] = Variable<String>(code);
    map['custom_code'] = Variable<String>(customCode);
    map['type_id'] = Variable<String>(typeId);
    map['category_id'] = Variable<String>(categoryId);
    map['purchase_price'] = Variable<String>(purchasePrice);
    map['sale_price'] = Variable<String>(salePrice);
    map['brand_id'] = Variable<String>(brandId);
    map['color'] = Variable<String>(color);
    map['size'] = Variable<String>(size);
    map['waight'] = Variable<String>(waight);
    map['alert_quantity'] = Variable<String>(alertQuantity);
    map['vat_id'] = Variable<String>(vatId);
    map['unit_id'] = Variable<String>(unitId);
    map['user_id'] = Variable<String>(userId);
    map['company_id'] = Variable<String>(companyId);
    map['available_for_subscription'] =
        Variable<String>(availableForSubscription);
    map['featured_item'] = Variable<String>(featuredItem);
    map['pc_original_thumb'] = Variable<String>(pcOriginalThumb);
    map['pc_mobile_thumb'] = Variable<String>(pcMobileThumb);
    map['pc_teb_thumb'] = Variable<String>(pcTebThumb);
    map['status'] = Variable<String>(status);
    map['del_status'] = Variable<String>(delStatus);
    map['production_item'] = Variable<String>(productionItem);
    return map;
  }

  ProductsCompanion toCompanion(bool nullToAbsent) {
    return ProductsCompanion(
      id: Value(id),
      onlineID: Value(onlineID),
      name: Value(name),
      code: Value(code),
      customCode: Value(customCode),
      typeId: Value(typeId),
      categoryId: Value(categoryId),
      purchasePrice: Value(purchasePrice),
      salePrice: Value(salePrice),
      brandId: Value(brandId),
      color: Value(color),
      size: Value(size),
      waight: Value(waight),
      alertQuantity: Value(alertQuantity),
      vatId: Value(vatId),
      unitId: Value(unitId),
      userId: Value(userId),
      companyId: Value(companyId),
      availableForSubscription: Value(availableForSubscription),
      featuredItem: Value(featuredItem),
      pcOriginalThumb: Value(pcOriginalThumb),
      pcMobileThumb: Value(pcMobileThumb),
      pcTebThumb: Value(pcTebThumb),
      status: Value(status),
      delStatus: Value(delStatus),
      productionItem: Value(productionItem),
    );
  }

  factory Product.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Product(
      id: serializer.fromJson<int>(json['id']),
      onlineID: serializer.fromJson<String>(json['onlineID']),
      name: serializer.fromJson<String>(json['name']),
      code: serializer.fromJson<String>(json['code']),
      customCode: serializer.fromJson<String>(json['customCode']),
      typeId: serializer.fromJson<String>(json['typeId']),
      categoryId: serializer.fromJson<String>(json['categoryId']),
      purchasePrice: serializer.fromJson<String>(json['purchasePrice']),
      salePrice: serializer.fromJson<String>(json['salePrice']),
      brandId: serializer.fromJson<String>(json['brandId']),
      color: serializer.fromJson<String>(json['color']),
      size: serializer.fromJson<String>(json['size']),
      waight: serializer.fromJson<String>(json['waight']),
      alertQuantity: serializer.fromJson<String>(json['alertQuantity']),
      vatId: serializer.fromJson<String>(json['vatId']),
      unitId: serializer.fromJson<String>(json['unitId']),
      userId: serializer.fromJson<String>(json['userId']),
      companyId: serializer.fromJson<String>(json['companyId']),
      availableForSubscription:
          serializer.fromJson<String>(json['availableForSubscription']),
      featuredItem: serializer.fromJson<String>(json['featuredItem']),
      pcOriginalThumb: serializer.fromJson<String>(json['pcOriginalThumb']),
      pcMobileThumb: serializer.fromJson<String>(json['pcMobileThumb']),
      pcTebThumb: serializer.fromJson<String>(json['pcTebThumb']),
      status: serializer.fromJson<String>(json['status']),
      delStatus: serializer.fromJson<String>(json['delStatus']),
      productionItem: serializer.fromJson<String>(json['productionItem']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'onlineID': serializer.toJson<String>(onlineID),
      'name': serializer.toJson<String>(name),
      'code': serializer.toJson<String>(code),
      'customCode': serializer.toJson<String>(customCode),
      'typeId': serializer.toJson<String>(typeId),
      'categoryId': serializer.toJson<String>(categoryId),
      'purchasePrice': serializer.toJson<String>(purchasePrice),
      'salePrice': serializer.toJson<String>(salePrice),
      'brandId': serializer.toJson<String>(brandId),
      'color': serializer.toJson<String>(color),
      'size': serializer.toJson<String>(size),
      'waight': serializer.toJson<String>(waight),
      'alertQuantity': serializer.toJson<String>(alertQuantity),
      'vatId': serializer.toJson<String>(vatId),
      'unitId': serializer.toJson<String>(unitId),
      'userId': serializer.toJson<String>(userId),
      'companyId': serializer.toJson<String>(companyId),
      'availableForSubscription':
          serializer.toJson<String>(availableForSubscription),
      'featuredItem': serializer.toJson<String>(featuredItem),
      'pcOriginalThumb': serializer.toJson<String>(pcOriginalThumb),
      'pcMobileThumb': serializer.toJson<String>(pcMobileThumb),
      'pcTebThumb': serializer.toJson<String>(pcTebThumb),
      'status': serializer.toJson<String>(status),
      'delStatus': serializer.toJson<String>(delStatus),
      'productionItem': serializer.toJson<String>(productionItem),
    };
  }

  Product copyWith(
          {int? id,
          String? onlineID,
          String? name,
          String? code,
          String? customCode,
          String? typeId,
          String? categoryId,
          String? purchasePrice,
          String? salePrice,
          String? brandId,
          String? color,
          String? size,
          String? waight,
          String? alertQuantity,
          String? vatId,
          String? unitId,
          String? userId,
          String? companyId,
          String? availableForSubscription,
          String? featuredItem,
          String? pcOriginalThumb,
          String? pcMobileThumb,
          String? pcTebThumb,
          String? status,
          String? delStatus,
          String? productionItem}) =>
      Product(
        id: id ?? this.id,
        onlineID: onlineID ?? this.onlineID,
        name: name ?? this.name,
        code: code ?? this.code,
        customCode: customCode ?? this.customCode,
        typeId: typeId ?? this.typeId,
        categoryId: categoryId ?? this.categoryId,
        purchasePrice: purchasePrice ?? this.purchasePrice,
        salePrice: salePrice ?? this.salePrice,
        brandId: brandId ?? this.brandId,
        color: color ?? this.color,
        size: size ?? this.size,
        waight: waight ?? this.waight,
        alertQuantity: alertQuantity ?? this.alertQuantity,
        vatId: vatId ?? this.vatId,
        unitId: unitId ?? this.unitId,
        userId: userId ?? this.userId,
        companyId: companyId ?? this.companyId,
        availableForSubscription:
            availableForSubscription ?? this.availableForSubscription,
        featuredItem: featuredItem ?? this.featuredItem,
        pcOriginalThumb: pcOriginalThumb ?? this.pcOriginalThumb,
        pcMobileThumb: pcMobileThumb ?? this.pcMobileThumb,
        pcTebThumb: pcTebThumb ?? this.pcTebThumb,
        status: status ?? this.status,
        delStatus: delStatus ?? this.delStatus,
        productionItem: productionItem ?? this.productionItem,
      );
  @override
  String toString() {
    return (StringBuffer('Product(')
          ..write('id: $id, ')
          ..write('onlineID: $onlineID, ')
          ..write('name: $name, ')
          ..write('code: $code, ')
          ..write('customCode: $customCode, ')
          ..write('typeId: $typeId, ')
          ..write('categoryId: $categoryId, ')
          ..write('purchasePrice: $purchasePrice, ')
          ..write('salePrice: $salePrice, ')
          ..write('brandId: $brandId, ')
          ..write('color: $color, ')
          ..write('size: $size, ')
          ..write('waight: $waight, ')
          ..write('alertQuantity: $alertQuantity, ')
          ..write('vatId: $vatId, ')
          ..write('unitId: $unitId, ')
          ..write('userId: $userId, ')
          ..write('companyId: $companyId, ')
          ..write('availableForSubscription: $availableForSubscription, ')
          ..write('featuredItem: $featuredItem, ')
          ..write('pcOriginalThumb: $pcOriginalThumb, ')
          ..write('pcMobileThumb: $pcMobileThumb, ')
          ..write('pcTebThumb: $pcTebThumb, ')
          ..write('status: $status, ')
          ..write('delStatus: $delStatus, ')
          ..write('productionItem: $productionItem')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        onlineID,
        name,
        code,
        customCode,
        typeId,
        categoryId,
        purchasePrice,
        salePrice,
        brandId,
        color,
        size,
        waight,
        alertQuantity,
        vatId,
        unitId,
        userId,
        companyId,
        availableForSubscription,
        featuredItem,
        pcOriginalThumb,
        pcMobileThumb,
        pcTebThumb,
        status,
        delStatus,
        productionItem
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Product &&
          other.id == this.id &&
          other.onlineID == this.onlineID &&
          other.name == this.name &&
          other.code == this.code &&
          other.customCode == this.customCode &&
          other.typeId == this.typeId &&
          other.categoryId == this.categoryId &&
          other.purchasePrice == this.purchasePrice &&
          other.salePrice == this.salePrice &&
          other.brandId == this.brandId &&
          other.color == this.color &&
          other.size == this.size &&
          other.waight == this.waight &&
          other.alertQuantity == this.alertQuantity &&
          other.vatId == this.vatId &&
          other.unitId == this.unitId &&
          other.userId == this.userId &&
          other.companyId == this.companyId &&
          other.availableForSubscription == this.availableForSubscription &&
          other.featuredItem == this.featuredItem &&
          other.pcOriginalThumb == this.pcOriginalThumb &&
          other.pcMobileThumb == this.pcMobileThumb &&
          other.pcTebThumb == this.pcTebThumb &&
          other.status == this.status &&
          other.delStatus == this.delStatus &&
          other.productionItem == this.productionItem);
}

class ProductsCompanion extends UpdateCompanion<Product> {
  final Value<int> id;
  final Value<String> onlineID;
  final Value<String> name;
  final Value<String> code;
  final Value<String> customCode;
  final Value<String> typeId;
  final Value<String> categoryId;
  final Value<String> purchasePrice;
  final Value<String> salePrice;
  final Value<String> brandId;
  final Value<String> color;
  final Value<String> size;
  final Value<String> waight;
  final Value<String> alertQuantity;
  final Value<String> vatId;
  final Value<String> unitId;
  final Value<String> userId;
  final Value<String> companyId;
  final Value<String> availableForSubscription;
  final Value<String> featuredItem;
  final Value<String> pcOriginalThumb;
  final Value<String> pcMobileThumb;
  final Value<String> pcTebThumb;
  final Value<String> status;
  final Value<String> delStatus;
  final Value<String> productionItem;
  const ProductsCompanion({
    this.id = const Value.absent(),
    this.onlineID = const Value.absent(),
    this.name = const Value.absent(),
    this.code = const Value.absent(),
    this.customCode = const Value.absent(),
    this.typeId = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.purchasePrice = const Value.absent(),
    this.salePrice = const Value.absent(),
    this.brandId = const Value.absent(),
    this.color = const Value.absent(),
    this.size = const Value.absent(),
    this.waight = const Value.absent(),
    this.alertQuantity = const Value.absent(),
    this.vatId = const Value.absent(),
    this.unitId = const Value.absent(),
    this.userId = const Value.absent(),
    this.companyId = const Value.absent(),
    this.availableForSubscription = const Value.absent(),
    this.featuredItem = const Value.absent(),
    this.pcOriginalThumb = const Value.absent(),
    this.pcMobileThumb = const Value.absent(),
    this.pcTebThumb = const Value.absent(),
    this.status = const Value.absent(),
    this.delStatus = const Value.absent(),
    this.productionItem = const Value.absent(),
  });
  ProductsCompanion.insert({
    this.id = const Value.absent(),
    required String onlineID,
    required String name,
    required String code,
    required String customCode,
    required String typeId,
    required String categoryId,
    required String purchasePrice,
    required String salePrice,
    required String brandId,
    required String color,
    required String size,
    required String waight,
    required String alertQuantity,
    required String vatId,
    required String unitId,
    required String userId,
    required String companyId,
    required String availableForSubscription,
    required String featuredItem,
    required String pcOriginalThumb,
    required String pcMobileThumb,
    required String pcTebThumb,
    required String status,
    required String delStatus,
    required String productionItem,
  })  : onlineID = Value(onlineID),
        name = Value(name),
        code = Value(code),
        customCode = Value(customCode),
        typeId = Value(typeId),
        categoryId = Value(categoryId),
        purchasePrice = Value(purchasePrice),
        salePrice = Value(salePrice),
        brandId = Value(brandId),
        color = Value(color),
        size = Value(size),
        waight = Value(waight),
        alertQuantity = Value(alertQuantity),
        vatId = Value(vatId),
        unitId = Value(unitId),
        userId = Value(userId),
        companyId = Value(companyId),
        availableForSubscription = Value(availableForSubscription),
        featuredItem = Value(featuredItem),
        pcOriginalThumb = Value(pcOriginalThumb),
        pcMobileThumb = Value(pcMobileThumb),
        pcTebThumb = Value(pcTebThumb),
        status = Value(status),
        delStatus = Value(delStatus),
        productionItem = Value(productionItem);
  static Insertable<Product> custom({
    Expression<int>? id,
    Expression<String>? onlineID,
    Expression<String>? name,
    Expression<String>? code,
    Expression<String>? customCode,
    Expression<String>? typeId,
    Expression<String>? categoryId,
    Expression<String>? purchasePrice,
    Expression<String>? salePrice,
    Expression<String>? brandId,
    Expression<String>? color,
    Expression<String>? size,
    Expression<String>? waight,
    Expression<String>? alertQuantity,
    Expression<String>? vatId,
    Expression<String>? unitId,
    Expression<String>? userId,
    Expression<String>? companyId,
    Expression<String>? availableForSubscription,
    Expression<String>? featuredItem,
    Expression<String>? pcOriginalThumb,
    Expression<String>? pcMobileThumb,
    Expression<String>? pcTebThumb,
    Expression<String>? status,
    Expression<String>? delStatus,
    Expression<String>? productionItem,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (onlineID != null) 'online_i_d': onlineID,
      if (name != null) 'name': name,
      if (code != null) 'code': code,
      if (customCode != null) 'custom_code': customCode,
      if (typeId != null) 'type_id': typeId,
      if (categoryId != null) 'category_id': categoryId,
      if (purchasePrice != null) 'purchase_price': purchasePrice,
      if (salePrice != null) 'sale_price': salePrice,
      if (brandId != null) 'brand_id': brandId,
      if (color != null) 'color': color,
      if (size != null) 'size': size,
      if (waight != null) 'waight': waight,
      if (alertQuantity != null) 'alert_quantity': alertQuantity,
      if (vatId != null) 'vat_id': vatId,
      if (unitId != null) 'unit_id': unitId,
      if (userId != null) 'user_id': userId,
      if (companyId != null) 'company_id': companyId,
      if (availableForSubscription != null)
        'available_for_subscription': availableForSubscription,
      if (featuredItem != null) 'featured_item': featuredItem,
      if (pcOriginalThumb != null) 'pc_original_thumb': pcOriginalThumb,
      if (pcMobileThumb != null) 'pc_mobile_thumb': pcMobileThumb,
      if (pcTebThumb != null) 'pc_teb_thumb': pcTebThumb,
      if (status != null) 'status': status,
      if (delStatus != null) 'del_status': delStatus,
      if (productionItem != null) 'production_item': productionItem,
    });
  }

  ProductsCompanion copyWith(
      {Value<int>? id,
      Value<String>? onlineID,
      Value<String>? name,
      Value<String>? code,
      Value<String>? customCode,
      Value<String>? typeId,
      Value<String>? categoryId,
      Value<String>? purchasePrice,
      Value<String>? salePrice,
      Value<String>? brandId,
      Value<String>? color,
      Value<String>? size,
      Value<String>? waight,
      Value<String>? alertQuantity,
      Value<String>? vatId,
      Value<String>? unitId,
      Value<String>? userId,
      Value<String>? companyId,
      Value<String>? availableForSubscription,
      Value<String>? featuredItem,
      Value<String>? pcOriginalThumb,
      Value<String>? pcMobileThumb,
      Value<String>? pcTebThumb,
      Value<String>? status,
      Value<String>? delStatus,
      Value<String>? productionItem}) {
    return ProductsCompanion(
      id: id ?? this.id,
      onlineID: onlineID ?? this.onlineID,
      name: name ?? this.name,
      code: code ?? this.code,
      customCode: customCode ?? this.customCode,
      typeId: typeId ?? this.typeId,
      categoryId: categoryId ?? this.categoryId,
      purchasePrice: purchasePrice ?? this.purchasePrice,
      salePrice: salePrice ?? this.salePrice,
      brandId: brandId ?? this.brandId,
      color: color ?? this.color,
      size: size ?? this.size,
      waight: waight ?? this.waight,
      alertQuantity: alertQuantity ?? this.alertQuantity,
      vatId: vatId ?? this.vatId,
      unitId: unitId ?? this.unitId,
      userId: userId ?? this.userId,
      companyId: companyId ?? this.companyId,
      availableForSubscription:
          availableForSubscription ?? this.availableForSubscription,
      featuredItem: featuredItem ?? this.featuredItem,
      pcOriginalThumb: pcOriginalThumb ?? this.pcOriginalThumb,
      pcMobileThumb: pcMobileThumb ?? this.pcMobileThumb,
      pcTebThumb: pcTebThumb ?? this.pcTebThumb,
      status: status ?? this.status,
      delStatus: delStatus ?? this.delStatus,
      productionItem: productionItem ?? this.productionItem,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (onlineID.present) {
      map['online_i_d'] = Variable<String>(onlineID.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (customCode.present) {
      map['custom_code'] = Variable<String>(customCode.value);
    }
    if (typeId.present) {
      map['type_id'] = Variable<String>(typeId.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<String>(categoryId.value);
    }
    if (purchasePrice.present) {
      map['purchase_price'] = Variable<String>(purchasePrice.value);
    }
    if (salePrice.present) {
      map['sale_price'] = Variable<String>(salePrice.value);
    }
    if (brandId.present) {
      map['brand_id'] = Variable<String>(brandId.value);
    }
    if (color.present) {
      map['color'] = Variable<String>(color.value);
    }
    if (size.present) {
      map['size'] = Variable<String>(size.value);
    }
    if (waight.present) {
      map['waight'] = Variable<String>(waight.value);
    }
    if (alertQuantity.present) {
      map['alert_quantity'] = Variable<String>(alertQuantity.value);
    }
    if (vatId.present) {
      map['vat_id'] = Variable<String>(vatId.value);
    }
    if (unitId.present) {
      map['unit_id'] = Variable<String>(unitId.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (companyId.present) {
      map['company_id'] = Variable<String>(companyId.value);
    }
    if (availableForSubscription.present) {
      map['available_for_subscription'] =
          Variable<String>(availableForSubscription.value);
    }
    if (featuredItem.present) {
      map['featured_item'] = Variable<String>(featuredItem.value);
    }
    if (pcOriginalThumb.present) {
      map['pc_original_thumb'] = Variable<String>(pcOriginalThumb.value);
    }
    if (pcMobileThumb.present) {
      map['pc_mobile_thumb'] = Variable<String>(pcMobileThumb.value);
    }
    if (pcTebThumb.present) {
      map['pc_teb_thumb'] = Variable<String>(pcTebThumb.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (delStatus.present) {
      map['del_status'] = Variable<String>(delStatus.value);
    }
    if (productionItem.present) {
      map['production_item'] = Variable<String>(productionItem.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductsCompanion(')
          ..write('id: $id, ')
          ..write('onlineID: $onlineID, ')
          ..write('name: $name, ')
          ..write('code: $code, ')
          ..write('customCode: $customCode, ')
          ..write('typeId: $typeId, ')
          ..write('categoryId: $categoryId, ')
          ..write('purchasePrice: $purchasePrice, ')
          ..write('salePrice: $salePrice, ')
          ..write('brandId: $brandId, ')
          ..write('color: $color, ')
          ..write('size: $size, ')
          ..write('waight: $waight, ')
          ..write('alertQuantity: $alertQuantity, ')
          ..write('vatId: $vatId, ')
          ..write('unitId: $unitId, ')
          ..write('userId: $userId, ')
          ..write('companyId: $companyId, ')
          ..write('availableForSubscription: $availableForSubscription, ')
          ..write('featuredItem: $featuredItem, ')
          ..write('pcOriginalThumb: $pcOriginalThumb, ')
          ..write('pcMobileThumb: $pcMobileThumb, ')
          ..write('pcTebThumb: $pcTebThumb, ')
          ..write('status: $status, ')
          ..write('delStatus: $delStatus, ')
          ..write('productionItem: $productionItem')
          ..write(')'))
        .toString();
  }
}

class $ProductsTable extends Products with TableInfo<$ProductsTable, Product> {
  final GeneratedDatabase _db;
  final String? _alias;
  $ProductsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _onlineIDMeta = const VerificationMeta('onlineID');
  @override
  late final GeneratedColumn<String?> onlineID = GeneratedColumn<String?>(
      'online_i_d', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String?> code = GeneratedColumn<String?>(
      'code', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _customCodeMeta = const VerificationMeta('customCode');
  @override
  late final GeneratedColumn<String?> customCode = GeneratedColumn<String?>(
      'custom_code', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _typeIdMeta = const VerificationMeta('typeId');
  @override
  late final GeneratedColumn<String?> typeId = GeneratedColumn<String?>(
      'type_id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _categoryIdMeta = const VerificationMeta('categoryId');
  @override
  late final GeneratedColumn<String?> categoryId = GeneratedColumn<String?>(
      'category_id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _purchasePriceMeta =
      const VerificationMeta('purchasePrice');
  @override
  late final GeneratedColumn<String?> purchasePrice = GeneratedColumn<String?>(
      'purchase_price', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _salePriceMeta = const VerificationMeta('salePrice');
  @override
  late final GeneratedColumn<String?> salePrice = GeneratedColumn<String?>(
      'sale_price', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _brandIdMeta = const VerificationMeta('brandId');
  @override
  late final GeneratedColumn<String?> brandId = GeneratedColumn<String?>(
      'brand_id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<String?> color = GeneratedColumn<String?>(
      'color', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _sizeMeta = const VerificationMeta('size');
  @override
  late final GeneratedColumn<String?> size = GeneratedColumn<String?>(
      'size', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _waightMeta = const VerificationMeta('waight');
  @override
  late final GeneratedColumn<String?> waight = GeneratedColumn<String?>(
      'waight', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _alertQuantityMeta =
      const VerificationMeta('alertQuantity');
  @override
  late final GeneratedColumn<String?> alertQuantity = GeneratedColumn<String?>(
      'alert_quantity', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _vatIdMeta = const VerificationMeta('vatId');
  @override
  late final GeneratedColumn<String?> vatId = GeneratedColumn<String?>(
      'vat_id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _unitIdMeta = const VerificationMeta('unitId');
  @override
  late final GeneratedColumn<String?> unitId = GeneratedColumn<String?>(
      'unit_id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String?> userId = GeneratedColumn<String?>(
      'user_id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _companyIdMeta = const VerificationMeta('companyId');
  @override
  late final GeneratedColumn<String?> companyId = GeneratedColumn<String?>(
      'company_id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _availableForSubscriptionMeta =
      const VerificationMeta('availableForSubscription');
  @override
  late final GeneratedColumn<String?> availableForSubscription =
      GeneratedColumn<String?>('available_for_subscription', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _featuredItemMeta =
      const VerificationMeta('featuredItem');
  @override
  late final GeneratedColumn<String?> featuredItem = GeneratedColumn<String?>(
      'featured_item', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _pcOriginalThumbMeta =
      const VerificationMeta('pcOriginalThumb');
  @override
  late final GeneratedColumn<String?> pcOriginalThumb =
      GeneratedColumn<String?>('pc_original_thumb', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _pcMobileThumbMeta =
      const VerificationMeta('pcMobileThumb');
  @override
  late final GeneratedColumn<String?> pcMobileThumb = GeneratedColumn<String?>(
      'pc_mobile_thumb', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _pcTebThumbMeta = const VerificationMeta('pcTebThumb');
  @override
  late final GeneratedColumn<String?> pcTebThumb = GeneratedColumn<String?>(
      'pc_teb_thumb', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String?> status = GeneratedColumn<String?>(
      'status', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _delStatusMeta = const VerificationMeta('delStatus');
  @override
  late final GeneratedColumn<String?> delStatus = GeneratedColumn<String?>(
      'del_status', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _productionItemMeta =
      const VerificationMeta('productionItem');
  @override
  late final GeneratedColumn<String?> productionItem = GeneratedColumn<String?>(
      'production_item', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        onlineID,
        name,
        code,
        customCode,
        typeId,
        categoryId,
        purchasePrice,
        salePrice,
        brandId,
        color,
        size,
        waight,
        alertQuantity,
        vatId,
        unitId,
        userId,
        companyId,
        availableForSubscription,
        featuredItem,
        pcOriginalThumb,
        pcMobileThumb,
        pcTebThumb,
        status,
        delStatus,
        productionItem
      ];
  @override
  String get aliasedName => _alias ?? 'products';
  @override
  String get actualTableName => 'products';
  @override
  VerificationContext validateIntegrity(Insertable<Product> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('online_i_d')) {
      context.handle(_onlineIDMeta,
          onlineID.isAcceptableOrUnknown(data['online_i_d']!, _onlineIDMeta));
    } else if (isInserting) {
      context.missing(_onlineIDMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('custom_code')) {
      context.handle(
          _customCodeMeta,
          customCode.isAcceptableOrUnknown(
              data['custom_code']!, _customCodeMeta));
    } else if (isInserting) {
      context.missing(_customCodeMeta);
    }
    if (data.containsKey('type_id')) {
      context.handle(_typeIdMeta,
          typeId.isAcceptableOrUnknown(data['type_id']!, _typeIdMeta));
    } else if (isInserting) {
      context.missing(_typeIdMeta);
    }
    if (data.containsKey('category_id')) {
      context.handle(
          _categoryIdMeta,
          categoryId.isAcceptableOrUnknown(
              data['category_id']!, _categoryIdMeta));
    } else if (isInserting) {
      context.missing(_categoryIdMeta);
    }
    if (data.containsKey('purchase_price')) {
      context.handle(
          _purchasePriceMeta,
          purchasePrice.isAcceptableOrUnknown(
              data['purchase_price']!, _purchasePriceMeta));
    } else if (isInserting) {
      context.missing(_purchasePriceMeta);
    }
    if (data.containsKey('sale_price')) {
      context.handle(_salePriceMeta,
          salePrice.isAcceptableOrUnknown(data['sale_price']!, _salePriceMeta));
    } else if (isInserting) {
      context.missing(_salePriceMeta);
    }
    if (data.containsKey('brand_id')) {
      context.handle(_brandIdMeta,
          brandId.isAcceptableOrUnknown(data['brand_id']!, _brandIdMeta));
    } else if (isInserting) {
      context.missing(_brandIdMeta);
    }
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color']!, _colorMeta));
    } else if (isInserting) {
      context.missing(_colorMeta);
    }
    if (data.containsKey('size')) {
      context.handle(
          _sizeMeta, size.isAcceptableOrUnknown(data['size']!, _sizeMeta));
    } else if (isInserting) {
      context.missing(_sizeMeta);
    }
    if (data.containsKey('waight')) {
      context.handle(_waightMeta,
          waight.isAcceptableOrUnknown(data['waight']!, _waightMeta));
    } else if (isInserting) {
      context.missing(_waightMeta);
    }
    if (data.containsKey('alert_quantity')) {
      context.handle(
          _alertQuantityMeta,
          alertQuantity.isAcceptableOrUnknown(
              data['alert_quantity']!, _alertQuantityMeta));
    } else if (isInserting) {
      context.missing(_alertQuantityMeta);
    }
    if (data.containsKey('vat_id')) {
      context.handle(
          _vatIdMeta, vatId.isAcceptableOrUnknown(data['vat_id']!, _vatIdMeta));
    } else if (isInserting) {
      context.missing(_vatIdMeta);
    }
    if (data.containsKey('unit_id')) {
      context.handle(_unitIdMeta,
          unitId.isAcceptableOrUnknown(data['unit_id']!, _unitIdMeta));
    } else if (isInserting) {
      context.missing(_unitIdMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('company_id')) {
      context.handle(_companyIdMeta,
          companyId.isAcceptableOrUnknown(data['company_id']!, _companyIdMeta));
    } else if (isInserting) {
      context.missing(_companyIdMeta);
    }
    if (data.containsKey('available_for_subscription')) {
      context.handle(
          _availableForSubscriptionMeta,
          availableForSubscription.isAcceptableOrUnknown(
              data['available_for_subscription']!,
              _availableForSubscriptionMeta));
    } else if (isInserting) {
      context.missing(_availableForSubscriptionMeta);
    }
    if (data.containsKey('featured_item')) {
      context.handle(
          _featuredItemMeta,
          featuredItem.isAcceptableOrUnknown(
              data['featured_item']!, _featuredItemMeta));
    } else if (isInserting) {
      context.missing(_featuredItemMeta);
    }
    if (data.containsKey('pc_original_thumb')) {
      context.handle(
          _pcOriginalThumbMeta,
          pcOriginalThumb.isAcceptableOrUnknown(
              data['pc_original_thumb']!, _pcOriginalThumbMeta));
    } else if (isInserting) {
      context.missing(_pcOriginalThumbMeta);
    }
    if (data.containsKey('pc_mobile_thumb')) {
      context.handle(
          _pcMobileThumbMeta,
          pcMobileThumb.isAcceptableOrUnknown(
              data['pc_mobile_thumb']!, _pcMobileThumbMeta));
    } else if (isInserting) {
      context.missing(_pcMobileThumbMeta);
    }
    if (data.containsKey('pc_teb_thumb')) {
      context.handle(
          _pcTebThumbMeta,
          pcTebThumb.isAcceptableOrUnknown(
              data['pc_teb_thumb']!, _pcTebThumbMeta));
    } else if (isInserting) {
      context.missing(_pcTebThumbMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('del_status')) {
      context.handle(_delStatusMeta,
          delStatus.isAcceptableOrUnknown(data['del_status']!, _delStatusMeta));
    } else if (isInserting) {
      context.missing(_delStatusMeta);
    }
    if (data.containsKey('production_item')) {
      context.handle(
          _productionItemMeta,
          productionItem.isAcceptableOrUnknown(
              data['production_item']!, _productionItemMeta));
    } else if (isInserting) {
      context.missing(_productionItemMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Product map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Product.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ProductsTable createAlias(String alias) {
    return $ProductsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $ProductsTable products = $ProductsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [products];
}
