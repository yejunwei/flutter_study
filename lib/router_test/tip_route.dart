import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TipRoute extends StatelessWidget{
  final String text;
  TipRoute({
     Key key,
    this.text,
  }):super(key:key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text("提示"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text(text),
              RaisedButton(
                onPressed: ()=>{
                  Navigator.pop(context, "我是提示页返回的值")
                },
                child: Text("返回"),
              )
            ],
          ),
        ),
      ),
    );
  }
}