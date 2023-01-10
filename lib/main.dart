import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftimage=1;
  int rightimage=4;


  void changeimage(){

  leftimage = Random().nextInt(8)+1;
  rightimage = Random().nextInt(8)+1;
}


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: const Text('TATABOQ'),
          backgroundColor: Colors.indigo[800],
        ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(leftimage == rightimage?'U Win': 'Try again',
              style: const TextStyle(fontSize: 42,color: Colors.white),),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(child: TextButton(onPressed: (){
                    setState(() {
                      changeimage();
                    });
                  }, child:Image.asset('images/image-$leftimage.png'),)),
                  Expanded(child: TextButton(onPressed: (){
                    setState(() {
                      changeimage();
                    });
                  }, child:Image.asset('images/image-$rightimage.png'),))
                ],
              ),
            )
          ],
        )

      ),
    );
  }
}
