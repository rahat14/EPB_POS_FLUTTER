import 'package:epb_pos_flutter/controllers/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'items.dart';

class PosPage extends StatelessWidget {
  final offlineDatabaseController = Get.put(CartController());

  // ProductListPage({Key? key}) : super(key: key);
  final TextEditingController _textEditingController = TextEditingController();

  PosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _textEditingController.text = "1";
    return Scaffold(
      appBar: AppBar(
        title: const Text("Point Of Sale"),
      ),
      body: Obx(() {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: ListView.builder(
                shrinkWrap: false,
                itemCount: offlineDatabaseController.cartProducts.length,
                itemBuilder: (context, index) {
                  return buildPosItem(
                      offlineDatabaseController.cartProducts[index]);
                },
              ),
            ),
            Container(height: 1, color: Colors.white),
            Container(
              color: Colors.blueGrey,
              child: Column(
                children: const [
                  Text("1"),
                  Text("2"),
                  Text("3"),
                  Text("4"),
                  Text("5"),
                ],
              ),
            )
          ],
        );
      }),
    );

    Future createStockDialgoue() =>
        showDialog(context: context, builder: (context) => AlertDialog());
  }

  thisTest() {
    print("object xxxxxxxxx");
  }
}
