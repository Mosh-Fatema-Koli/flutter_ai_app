
import 'package:flutter/material.dart';

class FaceDetection extends StatefulWidget {
  const FaceDetection({Key? key}) : super(key: key);

  @override
  State<FaceDetection> createState() => _FaceDetectionState();
}

class _FaceDetectionState extends State<FaceDetection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Face Detection")),
      ),
    );
  }
}
