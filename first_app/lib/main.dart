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
  final wordPair = <WordPair>[];
  var _checkedWords = new Set<WordPair>();
  @override
  Widget build(BuildContext context) {
    // return new Text(wordPair.asCamelCase, style: new TextStyle(fontSize: 20.0));
    return new Scaffold(
      body: new ListView.builder(itemBuilder: (context, index) {
        if (index >= wordPair.length) {
          wordPair.addAll(generateWordPairs().take(10));
        }
        return _buildRow(wordPair[index]);
      }),
    );
  }

  Widget _buildRow(WordPair wordPair) {
    final checked = _checkedWords.contains(wordPair);
    final color = checked ? Colors.green : Colors.red;
    return new ListTile(
        leading: new Icon(
          checked ? Icons.check_box : Icons.check_box_outline_blank,
          color: color,
        ),
        title: new Text(wordPair.asUpperCase,
            style: new TextStyle(fontSize: 20.0, color: color)),
        tileColor: Colors.white,
        onTap: () {
          setState(() {
            if (checked) {
              _checkedWords.remove(wordPair);
            } else {
              _checkedWords.add(wordPair);
            }
          });
        });
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "This is first app",
      home: new Scaffold(
        appBar: AppBar(
          title: new Text("My App Bar"),
        ),
        body: new Center(
          child: new randomText(),
        ),
      ),
    );
  }
}
