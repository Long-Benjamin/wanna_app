import 'package:flutter/material.dart';

class SigntrueViewPage extends StatefulWidget {
  SigntrueViewPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SigntrueViewPageState createState() => _SigntrueViewPageState();
}

class _SigntrueViewPageState extends State<SigntrueViewPage> {

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