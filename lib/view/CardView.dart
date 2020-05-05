import 'package:flutter/material.dart';

class CardViewPage extends StatefulWidget {
  CardViewPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _CardViewPageState createState() => _CardViewPageState();
}

class _CardViewPageState extends State<CardViewPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: _container()
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _container() {
    return Column(children: <Widget>[

       Card(color: Colors.lightBlue,
          margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
          elevation: 5,
          child: SizedBox(
            width: 240,
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
              child: Text("这个的卡片阴影的高度为 5，下面图片的是 10。",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
       ),

      Card(color: Colors.white,
          elevation: 20,
          child: Image(
            image: AssetImage("images/ic_place.jpg"),
            width: 240.0,),
      ),

      Card(
        elevation: 15,
        color: Colors.blueAccent,
        margin: EdgeInsets.all(40),
        shape: RoundedRectangleBorder(
          //Card 的圆角半径设置
          borderRadius: BorderRadiusDirectional.circular(20),
        ),
        clipBehavior: Clip.antiAlias,

        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          child: Image.asset("images/ic_qq.jpg", width: 100, height: 100,),
        ),
      ) ,

    ],);
  }
}