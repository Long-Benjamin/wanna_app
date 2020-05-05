import 'package:flutter/material.dart';

class LinearLayoutPage extends StatefulWidget {
  LinearLayoutPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LinearLayoutPageState createState() => _LinearLayoutPageState();
}

class _LinearLayoutPageState extends State<LinearLayoutPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          child: Column(
            //测试Row对齐方式，排除Column默认居中对齐的干扰
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("垂直布局，列0", style: TextStyle(backgroundColor: Colors.grey),),
              Text("垂直布局，列1"),
              Text("垂直布局，列2"),
              Image.asset("images/ic_place.jpg",scale: 20,),

              const SizedBox(height: 10,),

              Wrap(
                spacing: 8.0, // 主轴(水平)方向间距
                runSpacing: 4.0, // 纵轴（垂直）方向间距
                alignment: WrapAlignment.start, //沿主轴方向居中
                children: <Widget>[
                  new Chip(
                    avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('A')),
                    label: new Text('HamiltonItTooLong'),
                  ),
                  new Chip(
                    avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('M')),
                    label: new Text('Lafayette'),
                  ),
                  new Chip(
                    avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('H')),
                    label: new Text('Mulligan'),
                  ),
                  new Chip(
                    avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('J')),
                    label: new Text('Laurens'),
                  ),
                  new Chip(
                    avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('T')),
                    label: new Text('Jintang'),
                  ),

                ],
              ),

              const SizedBox(height: 10,),

              SizedBox(
                child: Flex(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Image.asset("images/ic_person.jpg" ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Image.asset("images/ic_aifight.jpg" ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Image.asset("images/ic_jiche.jpg" ),
                    ),
                  ],
              ),
              )


            ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}