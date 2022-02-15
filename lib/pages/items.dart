import 'package:epb_pos_flutter/database/app_database.dart';
import 'package:flutter/material.dart';

Widget buildPosItemRow(Product item) {
  return Card(
    elevation: 10,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8))),
    child: SizedBox(
      height: 150,
      width: 200,
      child: InkWell(
        onTap: () => print("i am clicked"),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0 , 0.0 , 8.0 , 0.0),
              child: Text(item.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ) ,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Code - ${item.code}",
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green)),
            )
          ],
        ),
      ),
    ),
  );
}
