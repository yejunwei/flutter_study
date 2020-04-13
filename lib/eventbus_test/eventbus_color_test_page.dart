import 'package:flutter/material.dart';
import 'package:flutter_yjw_study/eventbus_test/events.dart';

class EventBusColorTestPage extends StatefulWidget{

  _EventBusColorTestPage createState() => _EventBusColorTestPage();

}

class _EventBusColorTestPage extends State<EventBusColorTestPage>{
  TextEditingController _colorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("eventbus color test"),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
        child: Column(
          children: <Widget>[
            Text("eventbus事件总线输入颜色值修改文字颜色"),
            Padding(padding: EdgeInsets.only(top: 10),),

            TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(color: Colors.amber),
              controller: _colorController,
              decoration: InputDecoration(
                hintText: "输入正确的颜色值,如黑色：#000000",
                hintStyle: TextStyle(color: Colors.pink),
                contentPadding: EdgeInsets.all(10.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0)
                )
              ),
            ),

            RaisedButton(
              onPressed: (){
                if(_colorController.text == null || _colorController.text == ""){
                  print("格式不对！");
                  return;
                }
                ColorChangeEvent.setColor(_colorController.text).notify();
              },
              child: Text("确定"),
              color: Colors.pink,

            )
          ],
        ),
      ),
    );
  }
}