import 'package:epb_pos_flutter/controllers/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'items.dart';

class PosPage extends StatelessWidget {
  final cartController = Get.put(CartController());

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
                itemCount: cartController.cartProducts.length,
                itemBuilder: (context, index) {
                  return buildPosItem(
                      cartController.cartProducts[index] , cartController);
                },
              ),
            ),
            Container(height: 1, color: Colors.white),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Flexible(
                        child: Text("Total Price - "),
                      ) , 
                      Text(cartController.countTotal(cartController.cartProducts).toString()) ,
                     const Text(" BDT  ")
                    ],
                  ),
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
