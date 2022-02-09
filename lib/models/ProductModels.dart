import 'dart:convert';

ProductModels productModelsFromJson(String str) =>
    ProductModels.fromJson(json.decode(str));

String productModelsToJson(ProductModels data) => json.encode(data.toJson());

class ProductModels {
  ProductModels({
    List<Items>? items,
  }) {
    _items = items;
  }

  ProductModels.fromJson(dynamic json) {
    if (json['items'] != null) {
      _items = [];
      json['items'].forEach((v) {
        _items?.add(Items.fromJson(v));
      });
    }
  }

  List<Items>? _items;

  List<Items>? get items => _items;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_items != null) {
      map['items'] = _items?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

Items itemsFromJson(String str) => Items.fromJson(json.decode(str));

String itemsToJson(Items data) => json.encode(data.toJson());

class Items {
  Items({
    String? id,
    String? code,
    String? customCode,
    String? name,
    String? typeId,
    String? categoryId,
    String? purchasePrice,
    dynamic dealerPrice,
    String? salePrice,
    String? brandId,
    String? color,
    String? size,
    String? waight,
    dynamic material,
    String? alertQuantity,
    String? vatId,
    String? unitId,
    String? userId,
    dynamic expiryDate,
    String? companyId,
    String? availableForSubscription,
    String? featuredItem,
    String? pcOriginalThumb,
    String? pcMobileThumb,
    String? pcTebThumb,
    String? pcDesktopThumb,
    dynamic perishableStatus,
    dynamic perishableDays,
    String? productionItem,
    String? delStatus,
    String? status,
    String? rowUpdated,
    String? description,
  }) {
    _id = id;
    _code = code;
    _customCode = customCode;
    _name = name;
    _typeId = typeId;
    _categoryId = categoryId;
    _purchasePrice = purchasePrice;
    _dealerPrice = dealerPrice;
    _salePrice = salePrice;
    _brandId = brandId;
    _color = color;
    _size = size;
    _waight = waight;
    _material = material;
    _alertQuantity = alertQuantity;
    _vatId = vatId;
    _unitId = unitId;
    _userId = userId;
    _expiryDate = expiryDate;
    _companyId = companyId;
    _availableForSubscription = availableForSubscription;
    _featuredItem = featuredItem;
    _pcOriginalThumb = pcOriginalThumb;
    _pcMobileThumb = pcMobileThumb;
    _pcTebThumb = pcTebThumb;
    _pcDesktopThumb = pcDesktopThumb;
    _perishableStatus = perishableStatus;
    _perishableDays = perishableDays;
    _productionItem = productionItem;
    _delStatus = delStatus;
    _status = status;
    _rowUpdated = rowUpdated;
    _description = description;
  }

  Items.fromJson(dynamic json) {
    _id = json['id'];
    _code = json['code'];
    _customCode = json['custom_code'];
    _name = json['name'];
    _typeId = json['type_id'];
    _categoryId = json['category_id'];
    _purchasePrice = json['purchase_price'];
    _dealerPrice = json['dealer_price'];
    _salePrice = json['sale_price'];
    _brandId = json['brand_id'];
    _color = json['color'];
    _size = json['size'];
    _waight = json['waight'];
    _material = json['material'];
    _alertQuantity = json['alert_quantity'];
    _vatId = json['vat_id'];
    _unitId = json['unit_id'];
    _userId = json['user_id'];
    _expiryDate = json['expiry_date'];
    _companyId = json['company_id'];
    _availableForSubscription = json['available_for_subscription'];
    _featuredItem = json['featured_item'];
    _pcOriginalThumb = json['pc_original_thumb'];
    _pcMobileThumb = json['pc_mobile_thumb'];
    _pcTebThumb = json['pc_teb_thumb'];
    _pcDesktopThumb = json['pc_desktop_thumb'];
    _perishableStatus = json['perishable_status'];
    _perishableDays = json['perishable_days'];
    _productionItem = json['production_item'];
    _delStatus = json['del_status'];
    _status = json['status'];
    _rowUpdated = json['row_updated'];
    _description = json['description'];
  }

  String? _id;
  String? _code;
  String? _customCode;
  String? _name;
  String? _typeId;
  String? _categoryId;
  String? _purchasePrice;
  dynamic _dealerPrice;
  String? _salePrice;
  String? _brandId;
  String? _color;
  String? _size;
  String? _waight;
  dynamic _material;
  String? _alertQuantity;
  String? _vatId;
  String? _unitId;
  String? _userId;
  dynamic _expiryDate;
  String? _companyId;
  String? _availableForSubscription;
  String? _featuredItem;
  String? _pcOriginalThumb;
  String? _pcMobileThumb;
  String? _pcTebThumb;
  String? _pcDesktopThumb;
  dynamic _perishableStatus;
  dynamic _perishableDays;
  String? _productionItem;
  String? _delStatus;
  String? _status;
  String? _rowUpdated;
  String? _description;

  String? get id => _id;

  String? get code => _code;

  String? get customCode => _customCode;

  String? get name => _name;

  String? get typeId => _typeId;

  String? get categoryId => _categoryId;

  String? get purchasePrice => _purchasePrice;

  dynamic get dealerPrice => _dealerPrice;

  String? get salePrice => _salePrice;

  String? get brandId => _brandId;

  String? get color => _color;

  String? get size => _size;

  String? get waight => _waight;

  dynamic get material => _material;

  String? get alertQuantity => _alertQuantity;

  String? get vatId => _vatId;

  String? get unitId => _unitId;

  String? get userId => _userId;

  dynamic get expiryDate => _expiryDate;

  String? get companyId => _companyId;

  String? get availableForSubscription => _availableForSubscription;

  String? get featuredItem => _featuredItem;

  String? get pcOriginalThumb => _pcOriginalThumb;

  String? get pcMobileThumb => _pcMobileThumb;

  String? get pcTebThumb => _pcTebThumb;

  String? get pcDesktopThumb => _pcDesktopThumb;

  dynamic get perishableStatus => _perishableStatus;

  dynamic get perishableDays => _perishableDays;

  String? get productionItem => _productionItem;

  String? get delStatus => _delStatus;

  String? get status => _status;

  String? get rowUpdated => _rowUpdated;

  String? get description => _description;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['code'] = _code;
    map['custom_code'] = _customCode;
    map['name'] = _name;
    map['type_id'] = _typeId;
    map['category_id'] = _categoryId;
    map['purchase_price'] = _purchasePrice;
    map['dealer_price'] = _dealerPrice;
    map['sale_price'] = _salePrice;
    map['brand_id'] = _brandId;
    map['color'] = _color;
    map['size'] = _size;
    map['waight'] = _waight;
    map['material'] = _material;
    map['alert_quantity'] = _alertQuantity;
    map['vat_id'] = _vatId;
    map['unit_id'] = _unitId;
    map['user_id'] = _userId;
    map['expiry_date'] = _expiryDate;
    map['company_id'] = _companyId;
    map['available_for_subscription'] = _availableForSubscription;
    map['featured_item'] = _featuredItem;
    map['pc_original_thumb'] = _pcOriginalThumb;
    map['pc_mobile_thumb'] = _pcMobileThumb;
    map['pc_teb_thumb'] = _pcTebThumb;
    map['pc_desktop_thumb'] = _pcDesktopThumb;
    map['perishable_status'] = _perishableStatus;
    map['perishable_days'] = _perishableDays;
    map['production_item'] = _productionItem;
    map['del_status'] = _delStatus;
    map['status'] = _status;
    map['row_updated'] = _rowUpdated;
    map['description'] = _description;
    return map;
  }
}
