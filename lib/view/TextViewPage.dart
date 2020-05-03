import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TextViewPagePage extends StatefulWidget {
  TextViewPagePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _TextViewPagePageState createState() => _TextViewPagePageState();
}

class _TextViewPagePageState extends State<TextViewPagePage> {
  Color _color =Colors.deepPurple;

  void _changeTextColor() {
    setState(() {
      _color = Colors.grey;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Color(0xFFFFFFFF),
              ),
              tooltip: "back",
              onPressed: () => { Navigator.pop(context)},
            ),
            title: Text(widget.title)
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text("你好！Flutter"),

              Center(
                child: Text("床前明月光，疑是地上霜。\n举头望明月，低头思故乡。",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.white,
                      backgroundColor: Colors.cyan,
                      fontSize: 16,
                      letterSpacing: 3,
                      fontWeight: FontWeight.w800,
                      decorationColor: Colors.redAccent,
                  ),
                  textDirection: TextDirection.ltr,
                ),
              ),

             Container(
                child: Text.rich(TextSpan(children: [
                    TextSpan(text: "你可以试着"),
                    TextSpan(
                      text: "点击这里",
                      style: TextStyle(
                          color: _color,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          decorationColor: Colors.blue
                      ),
                      recognizer: TapGestureRecognizer()..onTap =() {
                        if(_color != Colors.grey)Fluttertoast.showToast(msg: "哈哈哈，你点了这里了！");
                        _changeTextColor();
                      }
                    ),
                    TextSpan(text: "看有没有响应。")
                  ],
                ),
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 14,
                      decorationColor: Colors.blue
                  ),
              ),
            ),

            ShaderMask(
              shaderCallback: (Rect bounds) {
                return RadialGradient(
                  center: Alignment.center,
                  radius: 1.0,
                  colors: <Color>[Colors.red, Colors.yellow, Colors.blue],
                  tileMode: TileMode.mirror,
                ).createShader(bounds);
              },
              blendMode: BlendMode.srcATop,
              child: const Text('This is a english sentence.\n换一行中文的文字试试！',
                style: TextStyle(
                  color: Colors.amberAccent
                ),
              ),
            ),

            Text(
              '待世界抗疫胜利之时，请您一定要回到家乡，我们一起在小酒馆把酒言欢。',
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(
                  fontStyle: FontStyle.italic,
              ),
            ),

          ],
        ) // This trailing comma makes auto-formatting nicer for build methods.
      )
    );
  }

}