
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dashboard"),
        ),
        body: GridView.count(
          padding: const EdgeInsets.all(22),
          crossAxisCount: 2,
          reverse: false,
          children: [
            Card(
                elevation: 10,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: InkWell(
                    onTap: ()=>  print("i am clicked"),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       Container(
                         alignment: Alignment.center,
                         child:  Image.asset(
                           "assets/images/icon.png",
                           fit: BoxFit.cover,
                           height: 55,
                           width: 55,
                         ) ,
                       ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Welcome" , style: TextStyle(
                            fontSize: 20 ,
                            fontWeight: FontWeight.bold ,
                          )),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            const Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: SizedBox(
                height: 200,
                width: 200,
              ),
            ),
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: SizedBox(
                height: 200,
                width: 200,
              ),
            ),
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: SizedBox(
                height: 200,
                width: 200,
              ),
            ),
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: SizedBox(
                height: 200,
                width: 200,
              ),
            ),
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: SizedBox(
                height: 200,
                width: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
