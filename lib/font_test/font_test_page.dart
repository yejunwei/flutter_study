import 'package:flutter/material.dart';

class FontTestPage extends StatefulWidget{

  _FontTestPageState createState() => _FontTestPageState();
}

class _FontTestPageState extends State<FontTestPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("自定义字体"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                "系统字体123abc 哈",
                style: TextStyle(
                    fontSize: 40
                ),
              ),
              Text(
                "DIN字体123abc 哈",
                style: TextStyle(
                    fontSize: 40,
                  fontFamily: "Din"
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}