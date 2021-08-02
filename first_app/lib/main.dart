import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(MyApp());
}

class randomText extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new randomTextState();
  }
}

class randomTextState extends State<randomText> {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return new Text(wordPair.asCamelCase, style: new TextStyle(fontSize: 20.0));
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "This is first app",
      home: new Scaffold(
        appBar: AppBar(
          title: Text("My App Bar"),
        ),
        body: Center(
          child: new randomText(),
        ),
      ),
    );
  }
}
