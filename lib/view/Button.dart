import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ButtonPage extends StatefulWidget {
  ButtonPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ButtonPageState createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const RaisedButton(
              child: Text(
                  'Disabled Button',
                  style: TextStyle(fontSize: 20, color: Colors.white)
              ),
            ),

            const SizedBox(height: 30),
            RaisedButton(
              onPressed: () {},
              child: const Text(
                  'Enabled Button',
                  style: TextStyle(fontSize: 20)
              ),
              color: Colors.lightBlue,
              textColor: Colors.white,
            ),

            const SizedBox(height: 30),
            RaisedButton.icon(
              onPressed: () {},
              label: const Text(
                  'Enabled Button icon',
                  style: TextStyle(fontSize: 20)
              ),
              icon: Icon(Icons.alarm, color: Colors.white, size: 25,),
              color: Colors.lightBlue,
              textColor: Colors.white,
            ),

            const SizedBox(height: 30),
            RaisedButton(
              onPressed: () {},
              textColor: Colors.white,
              padding: const EdgeInsets.all(0.0),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF0D47A1),
                      Color(0xFF1976D2),
                      Color(0xFF42A5F5),
                    ],
                  ),
                ),
                padding: const EdgeInsets.all(10.0),
                child: const Text(
                    'Gradient Button',
                    style: TextStyle(fontSize: 20)
                ),
              ),
            ),

            const SizedBox(height: 30),
            MaterialButton(
              padding: EdgeInsets.all(20),
              child: Text("MaterialButton"),
              color: Colors.deepPurple,
              textColor: Colors.yellow,
              height: 45,
              onPressed: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)
              ),
            ),

            const SizedBox(height: 30),
            IconButton(
              icon: Icon(Icons.print, color: Colors.blue, size: 25,),
              onPressed: (){},
            ),

            const SizedBox(height: 30),
            FlatButton(
              child: Text("FlatButton"),
              onPressed: (){},
            ),
          ],
        ),
    );
  }

}
