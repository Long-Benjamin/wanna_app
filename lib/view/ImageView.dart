import 'package:flutter/material.dart';

class ImageViewPage extends StatefulWidget {
  ImageViewPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ImageViewPageState createState() => _ImageViewPageState();
}

class _ImageViewPageState extends State<ImageViewPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            Image(
              image: AssetImage("images/ic_place.jpg"),
                width: 240.0,
            ),

            Image.asset("images/ic_person.jpg",
              height: 280.0,
              color: Colors.purple[600],
              colorBlendMode: BlendMode.colorDodge,
            ),

            Image(
              image: NetworkImage("http://img5.mtime.cn/mg/2016/10/02/160406.41155838.jpg"),
            ),

            Icon(Icons.fingerprint, color: Colors.red, size: 54.0),

            Image(
              image: NetworkImage("http://img5.mtime.cn/mg/2016/10/02/160406.41155838.jpg"),
              color: Colors.blue,
              colorBlendMode: BlendMode.plus,
              height: 240,
            ),

          ],),
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}