import 'package:epb_pos_flutter/controllers/database_controller.dart';
import 'package:epb_pos_flutter/database/app_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'items.dart';

class ProductListPage extends StatelessWidget {
  final offlineDatabaseController = Get.put(DatabaseController());

  // ProductListPage({Key? key}) : super(key: key);

  final TextEditingController _textEditingController =  TextEditingController() ;
  @override
  Widget build(BuildContext context) {
    _textEditingController.text = "1" ;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Point Of Sale"),
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
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(12),
                        hintText: 'Search Product',
                      ),
                      minLines: 1,
                      maxLines: 1,
                      onSubmitted: (value) {
                        thisTest();
                      },
                      textInputAction: TextInputAction.search,
                    ),
                  ),
                ),
                SizedBox(
                  child: Image.asset("assets/images/search_icon.png",
                      fit: BoxFit.fill),
                  height: 50,
                  width: 50,
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
                    title: buildPosItemRow(
                        offlineDatabaseController.offlineProducts[index]),
                    onTap: () => createStockDialogue( offlineDatabaseController.offlineProducts[index]));
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
              decoration: const InputDecoration(hintText: 'Enter Your Quantity'),
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
