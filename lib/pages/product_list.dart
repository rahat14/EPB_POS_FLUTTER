import 'package:epb_pos_flutter/controllers/database_controller.dart';
import 'package:epb_pos_flutter/database/app_database.dart';
import 'package:epb_pos_flutter/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'items.dart';

class ProductListPage extends StatelessWidget {
  final offlineDatabaseController = Get.put(DatabaseController());

  // ProductListPage({Key? key}) : super(key: key);

  final TextEditingController _textEditingController = TextEditingController();
  final TextEditingController _searchEditingController =
      TextEditingController();

  ProductListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _textEditingController.text = "1";
    return Scaffold(
      appBar: AppBar(
        title: const Text("Point Of Sale"),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.add_shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              Get.toNamed("/pos_page");
            },
          )
        ],
      ),
      body: Obx(() {
        return Column(
          children: [
            Row(
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: _searchEditingController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(12),
                        hintText: 'Search Product',
                      ),
                      minLines: 1,
                      maxLines: 1,
                      onSubmitted: (value) {
                        if (value.isEmpty) {
                          offlineDatabaseController.resetSearch();
                        } else {
                          offlineDatabaseController
                              .searchProduct(value.toLowerCase().trim());
                        }
                      },
                      textInputAction: TextInputAction.search,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (_searchEditingController.value.text.isEmpty) {
                      offlineDatabaseController.resetSearch();
                    } else {
                      offlineDatabaseController.searchProduct(
                          _searchEditingController.value.text.toLowerCase());
                    }
                  },
                  child: SizedBox(
                    child: Image.asset("assets/images/search_icon.png",
                        fit: BoxFit.fill),
                    height: 50,
                    width: 50,
                  ),
                ),
                const SizedBox(
                  height: 50,
                  width: 5,
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                )
              ],
              verticalDirection: VerticalDirection.up,
            ),
            Flexible(
              child: ListView.builder(
                itemCount: offlineDatabaseController.offlineProducts.length,
                itemBuilder: (context, index) {
                  return ListTile(
                      title: buildProductItemRow(
                          offlineDatabaseController.offlineProducts[index]),
                      onTap: () => createStockDialogue(
                          offlineDatabaseController.offlineProducts[index]));
                },
              ),
            )
          ],
        );
      }),
    );

    Future createStockDialgoue() =>
        showDialog(context: context, builder: (context) => AlertDialog());
  }

  createStockDialogue(Product offlineProduct) {
    Get.defaultDialog(
      title: "Select Quantity",
      barrierDismissible: false,
      contentPadding: const EdgeInsets.all(5),
      confirm: ElevatedButton(
        child: const Text("Add Product"),
        onPressed: () {
          int qty = int.parse(_textEditingController.value.text);

          if (qty > 0) {
            try {
              offlineDatabaseController.addProductToRunningCart(
                  offlineProduct, qty);
            } catch (e) {
              HelperClass.showToast("Error : ${e.toString()}", isError: true);
            } finally {
              HelperClass.showToast("Product Added !!");
              Get.back();
            }
            _textEditingController.clear();
          }
        },
      ),
      cancel: ElevatedButton(
        child: const Text("Cancel"),
        onPressed: () {
          Get.back();
        },
      ),
      content: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _textEditingController,
              autofocus: true,
              decoration:
                  const InputDecoration(hintText: 'Enter Your Quantity'),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            )
          ],
        ),
      ),
    );
  }

  thisTest() {
    print("object xxxxxxxxx");
  }
}
