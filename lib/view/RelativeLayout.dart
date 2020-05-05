import 'package:flutter/material.dart';

class RelativeLayoutPage extends StatefulWidget {
  RelativeLayoutPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _RelativeLayoutPageState createState() => _RelativeLayoutPageState();
}

class _RelativeLayoutPageState extends State<RelativeLayoutPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                width: 200,
                height: 200,
                child: Stack(
                  alignment:Alignment.center , //指定未定位或部分定位widget的对齐方式
                  children: <Widget>[
                    Container(
                      child: Text("不指定位置",style: TextStyle(color: Colors.white)),
                      color: Colors.red,
                    ),
                    Positioned(
                      left: 0.0,
                      top: 0,
                      child: Text("居左上"),
                    ),
                    Positioned(
                      left: 0.0,
                      child: Text("居左"),
                    ),
                    Positioned(
                      top: 0.0,
                      child: Text("局顶"),
                    ),
                    Positioned(
                      top: 0.0,
                      right: 0.0,
                      child: Text("局右上"),
                    ),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      child: Text("局左下"),
                    ),
                    Positioned(
                      bottom: 0.0,
                      right: 0.0,
                      child: Text("局右下"),
                    ),

                  ],),
              ),

              Container(
                color: Colors.lightBlue[100],
                child: Align(
                  alignment: Alignment.center,
                  widthFactor: 2,
                  heightFactor: 2,
                  child: FlutterLogo(
                    size: 60,
                  ),
                ),
              ),

              SizedBox(
                height: 50,
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  color: Colors.grey[200],
                  child:  Stack(
                    children: <Widget>[
                      //可以通过alignment属性，设置其子widget与其对齐方式，默认center；
                      //所以下面我们分别给注册和登录设置了居左和居右
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                            "注册",
                            style: TextStyle(color: Colors.red, fontSize: 15),
                          ),
                        ),

                      Align(
                        child: Text(
                          "登录",
                          style: TextStyle(color: Colors.blue, fontSize: 15),
                        ),
                      ),

                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "忘记密码",
                          style: TextStyle(color: Colors.red, fontSize: 15),
                        ),
                      ),

                    ],
                  ),
                ),
              ),

            ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}