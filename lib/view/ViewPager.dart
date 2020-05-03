import 'package:flutter/material.dart';

class ViewPagerPage extends StatefulWidget {
  ViewPagerPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ViewPagerPageState createState() => _ViewPagerPageState();
}

class _ViewPagerPageState extends State<ViewPagerPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(),
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}