import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_yjw_study/eventbus_test/colors.dart';
import 'package:flutter_yjw_study/eventbus_test/eventbus_color_test_page.dart';
import 'package:flutter_yjw_study/eventbus_test/events.dart';

class EventBusTestPage extends StatefulWidget{

  _EventBusTestPage createState() => _EventBusTestPage();

}

class _EventBusTestPage extends State<EventBusTestPage>{

  StreamSubscription _colorSubscription;

  Color _textColor;

  void dispose(){
    super.dispose();

    _colorSubscription.cancel();
  }

  void initState(){
    super.initState();

    _colorSubscription = eventBus.on<ColorChangeEvent>().listen((event){
      setState(() {
        print("event.colorStr : ${event.colorStr}");
        _textColor = AppColors.getColor(event.colorStr);
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("EventBus"),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: <Widget>[
              Text(
                  '颜色测试',
                style: TextStyle(color: _textColor,fontSize: 40),
              ),

              FlatButton(
                child: Text("Eventbus"),
                color: Colors.blue,
                onPressed: ()=>{
                  Navigator.push(context, MaterialPageRoute(builder:(context){
                    return EventBusColorTestPage();
                  }))
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}