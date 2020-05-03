import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TextViewPagePage extends StatefulWidget {
  TextViewPagePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _TextViewPagePageState createState() => _TextViewPagePageState();
}

class _TextViewPagePageState extends State<TextViewPagePage> {

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
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text("第一各页面！"),
              Center(
                child: GestureDetector(
                  onTap: ()=>{
                    _showToast("onTap")
                  },
                  onLongPress: ()=>{
                    _showToast("onLongPress")
                  },
                  onDoubleTap: ()=>{
                    _showToast("onDoubleTap")
                  },
                  child: Text("字写得的多一点嘛，再多一点既可以看一下换行的效果了,字写得的多一点嘛，再多一点既可以看一下换行的效果了哈哈哈哈哈哈a哈哈哈哈哈",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
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
             Container(
                child: Text.rich(TextSpan(children: [
                    TextSpan(text: "字写得的多一点嘛"),
                    TextSpan(
                      text: "改一个色号",
                      style: TextStyle(
                          color: Colors.red,
                          backgroundColor: Colors.white,
                          fontSize: 20,
                          decorationColor: Colors.blue
                      ),
                    ),
                    TextSpan(text: "字写得的多一点嘛")
                  ],
                ),
                  style: TextStyle(
                      color: Colors.white,
                      backgroundColor: Colors.redAccent,
                      fontSize: 14,
                      decorationColor: Colors.blue
                  ),
              ),
            )
          ],
        ) // This trailing comma makes auto-formatting nicer for build methods.
      )
    );
  }

  _showToast(String s) {
    Fluttertoast.showToast(msg: s,
      textColor: Colors.white,
      backgroundColor: Colors.black87,
        gravity: ToastGravity.TOP
    );
  }
}