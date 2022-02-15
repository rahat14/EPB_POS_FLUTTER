import 'package:epb_pos_flutter/controllers/database_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'items.dart';

class PosPage extends StatelessWidget {
  final offlineDatabaseController = Get.put(DatabaseController());

  PosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  child: Image.asset(
                      "assets/images/search_icon.png", fit: BoxFit.fill),
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
                    title: buildPosItemRow(offlineDatabaseController.offlineProducts[index]),
                  );
                },
              ),
            )
          ],
        );
      }),
    );
  }

  thisTest() {
    print("object xxxxxxxxx");
  }
}
