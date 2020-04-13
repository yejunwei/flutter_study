import 'package:flutter/material.dart';
import 'package:flutter_yjw_study/my_widget/rounded_border/rounded_border_widget.dart';
import 'package:flutter_yjw_study/my_widget/rounded_border/rounded_border_widget.dart';

class RoundedBorderTestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("测试rounded_border"),
      ),

      body: Center(
        child: Container(
          width: 200,
          child: RoundedBorderWidget(
            height: 100,
            borderWidth: 10,
            borderColor: Colors.pink,
            contentColor: Colors.blue,
            borderRadius: 20,
          ),
        ),
      ),
    );
  }
}
