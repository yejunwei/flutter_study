import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ChewieTestPage extends StatefulWidget{

  _ChewieTestPageState createState() => _ChewieTestPageState();
}

class _ChewieTestPageState extends State<ChewieTestPage>{
  String url = "https://nico-android-apk.oss-cn-beijing.aliyuncs.com/landscape.mp4";

  VideoPlayerController _videoPlayerController;
  ChewieController _chewieController;



  void dispose(){
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    _videoPlayerController = VideoPlayerController.network(
        "https://nico-android-apk.oss-cn-beijing.aliyuncs.com/landscape.mp4"
    );
    _chewieController = ChewieController(
        videoPlayerController: _videoPlayerController,
        aspectRatio: 16/9,
        autoPlay: true,
        looping: true
    );

    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        title: Text("chewie视频组件test"),
      ),
      body: Center(
        child: Container(
          child: Chewie(
            controller: _chewieController,
          ),
        ),
      ),
    );
  }
}