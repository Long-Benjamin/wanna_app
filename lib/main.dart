import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "WANNA",
      home: RandomWords(),
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

  final List<String> names = ["TextView","EditText","ImageView","CardView","Button",
    "ListView","RefreshLayout","GridView","ViewPager","LinearLayout","RelativeLayout",
    "Dialog","Toast","onClick","onLongClick","Switch","CheckBox","RadioButton","ProgressBar",
    "Activity LifeCycle","HttpRequest","Permission"];
  final _biggerFont = const TextStyle(fontSize: 16.0, color: Colors.black);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
              Icons.menu,
              color: Color(0xFFFFFFFF),
          ),
          tooltip: "menu",
          onPressed: null,
        ),
        title: Text("Flutter Widget"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Color(0xFFFFFFFF),
            ),
            tooltip: "Search",
            onPressed: null,
          )
        ],
      ),
      body: _buildSuggesttions(),
      floatingActionButton: FloatingActionButton(
        tooltip: "Add",
        child: Icon(
          Icons.add,
          color: Color(0xFFFFFFFF),
        ),
        onPressed: null,
      ),
    );
  }

  Widget _buildSuggesttions(){

    return ListView.separated(
        padding: const EdgeInsets.fromLTRB(16.0, 15.0, 0.0,15.0),
        itemBuilder: (context,i){
          return _buildRow(names[i]);
        },
        separatorBuilder:(context,i){
          return Divider();
        },
        itemCount: names.length);
  }

  Widget _buildRow(String name) {
    return new FlatButton(
       onPressed: () => Fluttertoast.showToast(msg: name),
      child: Text(
        name,
        style: _biggerFont,
        textDirection: TextDirection.ltr,),
    );
  }

}
