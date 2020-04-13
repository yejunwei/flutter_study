import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperTestPage extends StatefulWidget{
  _SwipetTestPageState createState() => _SwipetTestPageState();
}

class _SwipetTestPageState extends State<SwiperTestPage>{

  List<Map> _swiperDataSources = [
    {
      "imgUrl":
      "http://pic60.nipic.com/file/20150129/6448355_204110337000_2.jpg",
      "linkUrl":
      "http://pic60.nipic.com/file/20150129/6448355_204110337000_2.jpg"
    },
    {
      "imgUrl": "http://pic13.nipic.com/20110409/7119492_114440620000_2.jpg",
      "linkUrl": "http://pic13.nipic.com/20110409/7119492_114440620000_2.jpg"
    },
    {
      "imgUrl":
      "http://gss0.baidu.com/-fo3dSag_xI4khGko9WTAnF6hhy/lvpics/w=600/sign=1350023d79899e51788e391472a5d990/b21bb051f819861810d03e4448ed2e738ad4e65f.jpg",
      "linkUrl":
      "http://gss0.baidu.com/-fo3dSag_xI4khGko9WTAnF6hhy/lvpics/w=600/sign=1350023d79899e51788e391472a5d990/b21bb051f819861810d03e4448ed2e738ad4e65f.jpg"
    },
    {
      "imgUrl":
      "http://img4.cache.netease.com/photo/0001/2010-04-17/64EFS71V05RQ0001.jpg",
      "linkUrl":
      "http://img4.cache.netease.com/photo/0001/2010-04-17/64EFS71V05RQ0001.jpg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Swiper test page"),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 200,
          child: Swiper(
            containerWidth: 200,
            itemWidth: 200,
            itemCount: _swiperDataSources.length,
            itemBuilder: (BuildContext context, int index){
              return new Image.network(
                _swiperDataSources[index]["imgUrl"],
                fit: BoxFit.fitWidth,
              );
            },
            pagination: SwiperPagination(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.all(10),
                builder: SwiperPagination.dots
            ),
            control: SwiperControl(
              iconPrevious: Icons.arrow_back_ios,
              iconNext: Icons.arrow_back_ios,
              color: Colors.pink,
              size: 30,
              padding: EdgeInsets.all(5)
            ),
          ),
        ),
      ),
    );
  }
}
