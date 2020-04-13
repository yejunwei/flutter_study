import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_yjw_study/router_test/tip_route.dart';
import 'package:flutter_yjw_study/router_test/transition/enter_exit_route.dart';
import 'package:flutter_yjw_study/router_test/transition/fade_route.dart';
import 'package:flutter_yjw_study/router_test/transition/rotation_route.dart';
import 'package:flutter_yjw_study/router_test/transition/scale_rotation_route.dart';
import 'package:flutter_yjw_study/router_test/transition/scale_route.dart';
import 'package:flutter_yjw_study/router_test/transition/transform_route.dart';

class RouterTestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("路由学习页"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              RaisedButton(
                child: Text("去提示页"),
                onPressed: () async {
                  var result = await Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return TipRoute(text: "我是传给你的值");
                      })
                  );
                  print("提示页关闭返回的值：${result}");
                },
              ),

              RaisedButton(
                child: Text("fade "),
                onPressed: () async {
                  var result = await Navigator.push(context,
                      FadeRoute(TipRoute(text: "我是传给你的值"))
                  );
                  print("提示页关闭返回的值：${result}");
                },
              ),

              RaisedButton(
                child: Text("scale "),
                onPressed: () async {
                  var result = await Navigator.push(context,
                      ScaleRoute(TipRoute(text: "我是传给你的值"))
                  );
                  print("提示页关闭返回的值：${result}");
                },
              ),

              RaisedButton(
                child: Text("Rotation "),
                onPressed: () async {
                  var result = await Navigator.push(context,
                      RotationRoute(TipRoute(text: "我是传给你的值"))
                  );
                  print("提示页关闭返回的值：${result}");
                },
              ),

              RaisedButton(
                child: Text("scaleRotation "),
                onPressed: () async {
                  var result = await Navigator.push(context,
                      ScaleRotationRoute(TipRoute(text: "我是传给你的值"))
                  );
                  print("提示页关闭返回的值：${result}");
                },
              ),

              RaisedButton(
                child: Text("transform "),
                onPressed: () async {
                  var result = await Navigator.push(context,
                      TransformRoute(TipRoute(text: "我是传给你的值"))
                  );
                  print("提示页关闭返回的值：${result}");
                },
              ),

//              RaisedButton(
//                child: Text("enterexit "),
//                onPressed: () async {
//                  var result = await Navigator.push(
//                    EnterExitRoute(context, TipRoute(text: "我是传给你的值"))
//                  );
//                  print("提示页关闭返回的值：${result}");
//                },
//              ),

            ],
          )
        ),
      ),
    );
  }
}
