
import 'package:flutter/material.dart';

class BarCodeScaning extends StatefulWidget {
  const BarCodeScaning({Key? key}) : super(key: key);

  @override
  State<BarCodeScaning> createState() => _BarCodeScaningState();
}

class _BarCodeScaningState extends State<BarCodeScaning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child:Text("Bar Code Detection")),
      ),
    );
  }
}
