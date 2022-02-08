import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

// here code will generate it self.
part 'app_database.g.dart';

class Products extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get name => text()();

  TextColumn get desc => text()();

  TextColumn get company => text()();

  IntColumn get stock => integer()();
}

// This annotation tells the code generator which tables this DB works with
@DriftDatabase(tables: [Products])
// _$AppDatabase is the name of the generated class
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      // Specify the location of the database file
      : super(_openConnection());

  // Bump this when changing tables and columns.
  // Migrations will be covered in the next part.
  @override
  int get schemaVersion => 1;

  // queries
  Future<List<Product>> getAllProducts() => select(products).get();

  Future insertProduct(Product product) => into(products).insert(product);

  Future insertProducts(List<Product> productss) async {
    await batch((batch) => batch.insertAll(products, productss));
  }

  Future updateProduct(Product product) => update(products).replace(product);

  Stream<List<Product>> watchAllProducts() => select(products).watch();
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'epb_pos_db.sqlite'));
    return NativeDatabase(file);
  });
}
