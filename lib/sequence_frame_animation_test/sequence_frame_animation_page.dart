
import 'package:flutter/material.dart';
import 'package:flutter_yjw_study/sequence_frame_animation_test/sequence_frame_animate_widget.dart';

class SequenceFrameAnimationPage extends StatefulWidget{
  final List<String> list = [
    'images/animate/l1/LV1_00000.png',
    'images/animate/l1/LV1_00001.png',
    'images/animate/l1/LV1_00002.png',
    'images/animate/l1/LV1_00003.png',
    'images/animate/l1/LV1_00004.png',
    'images/animate/l1/LV1_00005.png',
    'images/animate/l1/LV1_00006.png',
    'images/animate/l1/LV1_00007.png',
    'images/animate/l1/LV1_00008.png',
    'images/animate/l1/LV1_00009.png',
    'images/animate/l1/LV1_00010.png',
    'images/animate/l1/LV1_00011.png',
    'images/animate/l1/LV1_00012.png',
    'images/animate/l1/LV1_00013.png',
    'images/animate/l1/LV1_00014.png',
    'images/animate/l1/LV1_00015.png',
  ];

  final GlobalKey<SequenceFrameAnimationImageState> _key = new GlobalKey<SequenceFrameAnimationImageState>();
  _SequenceFrameAnimationPage createState() => _SequenceFrameAnimationPage();
}

class _SequenceFrameAnimationPage extends State<SequenceFrameAnimationPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("序列帧动画"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: <Widget>[
            SequenceFrameAnimationImage(
                widget._key, widget.list, width: 162, height: 55, start: false,interval:50
            ),
            FlatButton(
              child: Text("播放"),
              color: Colors.blue,
              onPressed: (){
                widget._key.currentState.startAnimation();
              },
            ),
            FlatButton(
              child: Text("暂停"),
              color: Colors.blue,
              onPressed: (){
                widget._key.currentState.stopAnimation();
              },
            ),

            FlatButton(
              child: Text("重新播放"),
              color: Colors.blue,
              onPressed: (){
                widget._key.currentState.reStartAnimation();
              },
            ),
          ],
        ),
      ),
    );
  }
}