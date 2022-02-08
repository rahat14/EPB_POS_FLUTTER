// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Product extends DataClass implements Insertable<Product> {
  final int id;
  final String name;
  final String desc;
  final String company;
  final int stock;
  Product(
      {required this.id,
      required this.name,
      required this.desc,
      required this.company,
      required this.stock});
  factory Product.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Product(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      desc: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}desc'])!,
      company: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}company'])!,
      stock: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}stock'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['desc'] = Variable<String>(desc);
    map['company'] = Variable<String>(company);
    map['stock'] = Variable<int>(stock);
    return map;
  }

  ProductsCompanion toCompanion(bool nullToAbsent) {
    return ProductsCompanion(
      id: Value(id),
      name: Value(name),
      desc: Value(desc),
      company: Value(company),
      stock: Value(stock),
    );
  }

  factory Product.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Product(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      desc: serializer.fromJson<String>(json['desc']),
      company: serializer.fromJson<String>(json['company']),
      stock: serializer.fromJson<int>(json['stock']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'desc': serializer.toJson<String>(desc),
      'company': serializer.toJson<String>(company),
      'stock': serializer.toJson<int>(stock),
    };
  }

  Product copyWith(
          {int? id, String? name, String? desc, String? company, int? stock}) =>
      Product(
        id: id ?? this.id,
        name: name ?? this.name,
        desc: desc ?? this.desc,
        company: company ?? this.company,
        stock: stock ?? this.stock,
      );
  @override
  String toString() {
    return (StringBuffer('Product(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('desc: $desc, ')
          ..write('company: $company, ')
          ..write('stock: $stock')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, desc, company, stock);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Product &&
          other.id == this.id &&
          other.name == this.name &&
          other.desc == this.desc &&
          other.company == this.company &&
          other.stock == this.stock);
}

class ProductsCompanion extends UpdateCompanion<Product> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> desc;
  final Value<String> company;
  final Value<int> stock;
  const ProductsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.desc = const Value.absent(),
    this.company = const Value.absent(),
    this.stock = const Value.absent(),
  });
  ProductsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String desc,
    required String company,
    required int stock,
  })  : name = Value(name),
        desc = Value(desc),
        company = Value(company),
        stock = Value(stock);
  static Insertable<Product> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? desc,
    Expression<String>? company,
    Expression<int>? stock,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (desc != null) 'desc': desc,
      if (company != null) 'company': company,
      if (stock != null) 'stock': stock,
    });
  }

  ProductsCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? desc,
      Value<String>? company,
      Value<int>? stock}) {
    return ProductsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      company: company ?? this.company,
      stock: stock ?? this.stock,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (desc.present) {
      map['desc'] = Variable<String>(desc.value);
    }
    if (company.present) {
      map['company'] = Variable<String>(company.value);
    }
    if (stock.present) {
      map['stock'] = Variable<int>(stock.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('desc: $desc, ')
          ..write('company: $company, ')
          ..write('stock: $stock')
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
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _descMeta = const VerificationMeta('desc');
  @override
  late final GeneratedColumn<String?> desc = GeneratedColumn<String?>(
      'desc', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _companyMeta = const VerificationMeta('company');
  @override
  late final GeneratedColumn<String?> company = GeneratedColumn<String?>(
      'company', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _stockMeta = const VerificationMeta('stock');
  @override
  late final GeneratedColumn<int?> stock = GeneratedColumn<int?>(
      'stock', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name, desc, company, stock];
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
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('desc')) {
      context.handle(
          _descMeta, desc.isAcceptableOrUnknown(data['desc']!, _descMeta));
    } else if (isInserting) {
      context.missing(_descMeta);
    }
    if (data.containsKey('company')) {
      context.handle(_companyMeta,
          company.isAcceptableOrUnknown(data['company']!, _companyMeta));
    } else if (isInserting) {
      context.missing(_companyMeta);
    }
    if (data.containsKey('stock')) {
      context.handle(
          _stockMeta, stock.isAcceptableOrUnknown(data['stock']!, _stockMeta));
    } else if (isInserting) {
      context.missing(_stockMeta);
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
