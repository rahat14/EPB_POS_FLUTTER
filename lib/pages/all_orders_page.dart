import 'package:epb_pos_flutter/controllers/database_controller.dart';
import 'package:epb_pos_flutter/controllers/orders_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllOrders extends StatelessWidget {
  final OrdersController offlineDatabaseController = Get.put(OrdersController());

  AllOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    offlineDatabaseController.getSellsHistory();
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Orders"),
      ),
      body: Obx(() {
        return Column(
          children: [
            Flexible(
              child: ListView.builder(
                itemCount: offlineDatabaseController.allSales.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 3,
                      child: ListTile(
                          title: Text(offlineDatabaseController
                              .allSales[index].name
                              .toString()),
                          subtitle: Text(offlineDatabaseController
                              .allSales[index].cartId
                              .toString()),
                          onTap: () => {
                                Get.toNamed("sale_details", arguments: [
                                  (offlineDatabaseController
                                      .allSales[index].cartId)
                                ])
                              }),
                    ),
                  );
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

  thisTest() {
    print("object xxxxxxxxx");
  }
}
