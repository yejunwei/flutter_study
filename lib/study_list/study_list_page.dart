import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_yjw_study/Swiper_test/swiper_test_page.dart';
import 'package:flutter_yjw_study/blurry_test/blurry_test_page.dart';
import 'package:flutter_yjw_study/chewie_test/chewie_test_page.dart';
import 'package:flutter_yjw_study/custom_icon/custom_icon_demo.dart';
import 'package:flutter_yjw_study/eventbus_test/eventbus_test_page.dart';
import 'package:flutter_yjw_study/font_test/font_test_page.dart';
import 'package:flutter_yjw_study/listview_test/listview_test_page.dart';
import 'package:flutter_yjw_study/my_widget/rounded_border/rounded_border_test_page.dart';
import 'package:flutter_yjw_study/router_test/router_test_Page.dart';
import 'package:flutter_yjw_study/sequence_frame_animation_test/sequence_frame_animation_page.dart';

class StudyListPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("学习列表"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              FlatButton(
                child: Text("路由学习"),
                color: Colors.blue,
                onPressed: ()=>{
                  Navigator.push(context, MaterialPageRoute(builder:(context){
                    return RouterTestPage();
                  }))
                },
              ),
              FlatButton(
                child: Text("自定义圆角 rounded_border"),
                color: Colors.blue,
                onPressed: ()=>{
                  Navigator.push(context, MaterialPageRoute(builder:(context){
                    return RoundedBorderTestPage();
                  }))
                },
              ),
              FlatButton(
                child: Text("chewie视频组件"),
                color: Colors.blue,
                onPressed: ()=>{
                  Navigator.push(context, MaterialPageRoute(builder:(context){
                    return ChewieTestPage();
                  }))
                },
              ),
//              FlatButton(
//                child: Text("基于chewie视频组件的自定义UI"),
//                color: Colors.blue,
//                onPressed: ()=>{
//                  Navigator.push(context, MaterialPageRoute(builder:(context){
//                    return RoundedBorderTestPage();
//                  }))
//                },
//              ),
              FlatButton(
                child: Text("swiper 轮播组件"),
                color: Colors.blue,
                onPressed: ()=>{
                  Navigator.push(context, MaterialPageRoute(builder:(context){
                    return SwiperTestPage();
                  }))
                },
              ),

              FlatButton(
                child: Text("模糊使用"),
                color: Colors.blue,
                onPressed: ()=>{
                  Navigator.push(context, MaterialPageRoute(builder:(context){
                    return BlurryTestPage();
                  }))
                },
              ),

              FlatButton(
                child: Text("listView 相关"),
                color: Colors.blue,
                onPressed: ()=>{
                  Navigator.push(context, MaterialPageRoute(builder:(context){
                    return ListViewTestPage();
                  }))
                },
              ),

              FlatButton(
                child: Text("自定义 fonts"),
                color: Colors.blue,
                onPressed: ()=>{
                  Navigator.push(context, MaterialPageRoute(builder:(context){
                    return FontTestPage();
                  }))
                },
              ),
              FlatButton(
                child: Text("自定义 icons"),
                color: Colors.blue,
                onPressed: ()=>{
                  Navigator.push(context, MaterialPageRoute(builder:(context){
                    return CustomIconsDemo();
                  }))
                },
              ),
              FlatButton(
                child: Text("Eventbus"),
                color: Colors.blue,
                onPressed: ()=>{
                  Navigator.push(context, MaterialPageRoute(builder:(context){
                    return EventBusTestPage();
                  }))
                },
              ),

              FlatButton(
                child: Text("序列帧动画播放"),
                color: Colors.blue,
                onPressed: ()=>{
                  Navigator.push(context, MaterialPageRoute(builder:(context){
                    return SequenceFrameAnimationPage();
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