import 'package:flutter/material.dart';

void main() {
  runApp(MaterialExample());
}

class MaterialExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MaterialExampleState();
  }
}

class _MaterialExampleState extends State<MaterialExample> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Bar"),
        ),
        body: Center(
          child: Text(
            "TUNG",
            style: TextStyle(fontSize: 20, color: Colors.blueGrey),
          ),
        ),
      ),
    );
  }
}
