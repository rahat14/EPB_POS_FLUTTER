import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/orders_controller.dart';
import 'items.dart';

class SaleDetails extends StatelessWidget {
  final controller = Get.put(OrdersController());

  SaleDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var one = Get.arguments;
    controller.getSoldCartProducts("${one[0]}");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sales Details"),
      ),
      body: Obx(() {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: ListView.builder(
                shrinkWrap: false,
                itemCount: controller.salesHistoryProducts.length,
                itemBuilder: (context, index) {
                  return oldSalesProductItem(
                      controller.salesHistoryProducts[index]);
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
                        child: Text(
                          "Total Price - ",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                          controller
                              .countTotal(controller.salesHistoryProducts)
                              .toString(),
                          style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      const Text(" ৳  ",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold))
                    ],
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
