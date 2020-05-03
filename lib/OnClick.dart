import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class OnClickPage extends StatefulWidget {
  OnClickPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _OnClickPageState createState() => _OnClickPageState();
}

class _OnClickPageState extends State<OnClickPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(children: <Widget>[
            Center(
              child: GestureDetector(
                onTap: ()=>{
                  _showToast("点击了奥！")
                },
                onLongPress: ()=>{
                  _showToast("长按了哦！")
                },
                onDoubleTap: ()=>{
                  _showToast("双击了哦！")
                },

                child: Text("你可以点击一下看看啊",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    height: 10,
                    color: Colors.white,
                    backgroundColor: Colors.cyan,
                    fontSize: 16,
                    letterSpacing: 3,
                    fontWeight: FontWeight.w800,
                    decorationColor: Colors.redAccent,
                  ),
                ),
              ),
            ),
          ],),
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


  ///  弹出提示语
  _showToast(String s) {
    Fluttertoast.showToast(msg: s,
        textColor: Colors.white,
        backgroundColor: Colors.black87,
        gravity: ToastGravity.BOTTOM
    );
  }

}