import 'package:epb_pos_flutter/database/app_database.dart';
import 'package:flutter/material.dart';

Widget buildProductItemRow(Product item) {
  return Card(
    elevation: 10,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8))),
    child: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff8e98cf), Color(0xffD9DFFF)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      height: 150,
      width: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
            child: Text(
              item.name,
              style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Code - ${item.code}",
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.green)),
          )
        ],
      ),
    ),
  );
}

Widget buildPosItem(RunningCartProductData item) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(12.0 ,0, 12.0 ,0),
    child: Card(
      elevation: 4,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4))),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(item.name,
                textAlign: TextAlign.start,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
          )),
          Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.add,
                  color: Colors.green,
                ),
                onPressed: () {
                  // do something
                },
              ),
               Text(
                "${item.cartQty}",
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.black),
              ),
              IconButton(
                icon: const Icon(Icons.horizontal_rule, color: Colors.red),
                onPressed: () {
                  // do something
                },
              ),
              IconButton(
                icon: const Icon(Icons.delete, color: Colors.red),
                onPressed: () {
                  // do something
                },
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
