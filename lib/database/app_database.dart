import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

// here code will generate it self.
part 'app_database.g.dart';

class Products extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get onlineID => text()();

  TextColumn get name => text()();

  TextColumn get code => text()();

  TextColumn get customCode => text()();

  TextColumn get typeId => text()();

  TextColumn get categoryId => text()();

  TextColumn get purchasePrice => text()();

  TextColumn get salePrice => text()();

  TextColumn get brandId => text()();

  TextColumn get color => text()();

  TextColumn get size => text()();

  TextColumn get waight => text()();

  TextColumn get alertQuantity => text()();

  TextColumn get vatId => text()();

  TextColumn get unitId => text()();

  TextColumn get userId => text()();

  TextColumn get companyId => text()();

  TextColumn get availableForSubscription => text()();

  TextColumn get featuredItem => text()();

  TextColumn get pcOriginalThumb => text()();

  TextColumn get pcMobileThumb => text()();

  TextColumn get pcTebThumb => text()();

  TextColumn get status => text()();

  TextColumn get delStatus => text()();

  TextColumn get productionItem => text()();
}

class RunningCartProduct extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get onlineID => text()();

  TextColumn get name => text()();

  TextColumn get code => text()();

  TextColumn get customCode => text()();

  TextColumn get typeId => text()();

  TextColumn get purchasePrice => text()();

  TextColumn get salePrice => text()();

  IntColumn get cartQty => integer()();
}

class SoldCartProducts extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get cartId => text()();

  TextColumn get onlineID => text()();

  TextColumn get name => text()();

  TextColumn get code => text()();

  TextColumn get customCode => text()();

  TextColumn get typeId => text()();

  TextColumn get purchasePrice => text()();

  TextColumn get salePrice => text()();

  IntColumn get cartQty => integer()();
}

class SoldCartDetails extends Table {
  TextColumn get cartId => text()();

  TextColumn get name => text()();
}

@DriftDatabase(
    tables: [Products, RunningCartProduct, SoldCartProducts, SoldCartDetails])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 8;

  @override
  MigrationStrategy get migration => MigrationStrategy(onCreate: (Migrator m) {
        return m.createAll();
      }, onUpgrade: (Migrator m, int from, int to) async {
        await m.createAll();
      });

  // queries
  Future<List<Product>> getAllProducts() => select(products).get();

  Future insertProduct(Product product) => into(products).insert(product);

  Future insertProductInRunningCart(RunningCartProductCompanion item) =>
      into(runningCartProduct).insert(item, mode: InsertMode.insertOrReplace);

  Future updateProductInRunningCart(RunningCartProductData item) =>
      update(runningCartProduct).replace(item);

  Future<List<RunningCartProductData>> getAllRunningCartProducts() =>
      select(runningCartProduct).get();

  Future insertProducts(List<ProductsCompanion> productss) async {
    await batch((batch) => batch.insertAll(products, productss));
  }

  Future<List<SoldCartDetail>> getAllSellHistory() =>
      select(soldCartDetails).get();

  Future<List<SoldCartProduct>> getListOfSoldProductByCartId(String cartID) =>
      (select(soldCartProducts)..where((t) => t.cartId.equals(cartID))).get();

  Future insertProductsOnSoldCartProducts(
      List<SoldCartProductsCompanion> items) async {
    await batch((batch) => batch.insertAll(soldCartProducts, items));
  }

  Future insertCartDetailsOnSoldCartDetails(SoldCartDetailsCompanion item) =>
      into(soldCartDetails).insert(item);

  Future updateProduct(Product product) => update(products).replace(product);

  Future deleteAllProduct() =>
      (delete(products)..where((t) => t.id.isBiggerThanValue(0))).go();

  Future deleteRunningCartItemById(int pid) =>
      (delete(products)..where((t) => t.id.equals(pid))).go();
}

LazyDatabase _openConnection() {
  print("PEOPLE CREST");
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'epb_pos_db.sqlite'));
    return NativeDatabase(file);
  });
}
