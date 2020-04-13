import 'package:flutter/material.dart';

class SliverFloatDemoPage extends StatefulWidget{

  _SliverFloatDemoPage createState() => _SliverFloatDemoPage();
}

class _SliverFloatDemoPage extends State<SliverFloatDemoPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("sdfsdfsd"),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            snap: true,
            pinned: true,
            expandedHeight: 250,
            elevation: 0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("sliver-float"),
              background: Image.network("http://a3.att.hudong.com/10/78/01300001211038131960785875726.jpg",
              fit: BoxFit.cover,),
            ),

          ),
          SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate(
                (context, index){
                  final isOdd = index % 2 == 1;
                  return Container(
                    alignment: Alignment.center,
                    color: isOdd ? Colors.white : Colors.pink,
                    child: Text(
                      index.toString()
                    ),
                  );
                },
              childCount: 50,

            ),
            itemExtent: 80,
          )
        ],
      ),
    );
  }
}