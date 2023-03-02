
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_ai_app/Bar%20Code%20Scan/bar_code_scan.dart';
import 'package:flutter_ai_app/Face%20detection/face_detection.dart';
import 'package:flutter_ai_app/Text_Recognition/text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool isColor= false;
  List colors = [Colors.red, Colors.green, Colors.yellow,Colors.red, Colors.green, Colors.yellow];
  Random random = new Random();
  int index = 0;
  List menuItem =["Text Recognition","Face Detection","Bar Code Scanning", "Image Leabeling","Object Detection"];



  void changeIndex() {
    setState(() => index = random.nextInt(3));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Flutter Machine Learning")),
      ),
      body: ListView.builder(
        itemCount: menuItem.length,

          itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(10),
        child: GestureDetector(
          onTap: () {
            if (index == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const TextScanner()),
              );
            } else if (index == 1) {

              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const  FaceDetection()),
              );

            } else if (index == 2) {

              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const  BarCodeScaning()),
              );

            } else if (index == 3) {

            } else if (index == 4) {

            } else if (index == 5) {

            }
          },
          child: Container(
            color: colors[index],
            height: 150,
            width: 100,
            child: Center(child: Text(menuItem[index]),
          ),
      ),
        ),)
    )
  );
  }
}
