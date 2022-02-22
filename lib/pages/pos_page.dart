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
                  return buildPosItem(cartController.cartProducts[index],
                      cartController, index);
                },
              ),
            ),
            Container(height: 1, color: Colors.white),
            Container(
              color: Colors.grey,
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Flexible(
                        child: Text("Total Price - " , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold ),),
                      ),
                      Text(cartController
                          .countTotal(cartController.cartProducts)
                          .toString() , style: const TextStyle(fontSize: 17 , fontWeight: FontWeight.bold , color: Colors.black ) ),
                      const Text(" ৳  " , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold ))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: MaterialButton(
                          onPressed: () {},
                          textColor: Colors.white,
                          color: Colors.red,
                          child: const Text("Cancel"),
                        )),
                        Expanded(
                            child: MaterialButton(
                          onPressed: () {},
                          textColor: Colors.white,
                          color: Colors.blueAccent,
                          child: const Text("Hold"),
                        )),
                        Expanded(
                            child: MaterialButton(
                          onPressed: () {},
                          textColor: Colors.white,
                          color: Colors.green,
                          child: const Text("Confirm"),
                        ))
                      ],
                    ),
                  )
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
