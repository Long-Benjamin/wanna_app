import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: "WANNA",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Wanna"),
        ),
        body: Center(
          child: RandomWords(),
        ),
      ),
    );
  }

}

class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RandomWordsState();
  }
}

class RandomWordsState extends State<RandomWords>{
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 16.0);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("叫什么好呢？"),
      ),
      body: _buildSuggesttions(),
    );
  }

  Widget _buildSuggesttions(){
    return ListView.builder(
        padding: const EdgeInsets.all(15.0),
        itemBuilder: (context,i){
          if(i.isOdd) return Divider();
          final index = i ~/ 2;
          if(index >= _suggestions.length){
            _suggestions.addAll(generateWordPairs().take(12));
          }
          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(WordPair suggestion) {
    return ListTile(
      title: Text(
          suggestion.asPascalCase,
          style: _biggerFont,
      ),
    );
  }
}
