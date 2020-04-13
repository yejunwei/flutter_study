import 'dart:ui';

import 'package:flutter/material.dart';

class BlurryTestPage extends StatefulWidget{

  _BlurryTestPageState createState() => _BlurryTestPageState();
}

class _BlurryTestPageState extends State<BlurryTestPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("模糊测试page"),
      ),
      body: Center(
        child: Container(
          child: Stack(
            children: <Widget>[
              Image.network(
                "http://pic60.nipic.com/file/20150129/6448355_204110337000_2.jpg",
                width: 300,
                height: 300,
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                child: new Container(
                  color: Colors.white.withOpacity(0.1),
                  width: 300,
                  height: 300,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}