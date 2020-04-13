import 'package:flutter/material.dart';

class CustomSliverHeaderPage extends StatefulWidget{
  _CustomSliverHeaderPage createState() => _CustomSliverHeaderPage();
}

class _CustomSliverHeaderPage extends State<CustomSliverHeaderPage>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            pinned: true,
            delegate: SliverCustomHeaderDelegate(
              title: "xxxxxxx",
              collapsedHeight: 40,
              expandedHeight: 300,
              paddingTop: MediaQuery.of(context).padding.top,
              coverImgUrl: "http://a3.att.hudong.com/10/78/01300001211038131960785875726.jpg"

            ),
          ),
//          SliverFillRemaining(
//            child: Column(
//              children: <Widget>[
//                Container(
//                  width: 300,
//                  height: 300,
//                  child: Text("111"),
//                ),
//                Container(
//                  width: 300,
//                  height: 300,
//                  child: Text("111"),
//                ),
//                  Container(
//                    width: 300,
//                    height: 300,
//                    child: Text("111"),
//                  ),
//                  Container(
//                    width: 300,
//                    height: 300,
//                    child: Text("111"),
//                  ),
////                  Container(
////                    width: 300,
////                    height: 300,
////                    child: Text("111"),
////                  ),
////                  Container(
////                    width: 300,
////                    height: 300,
////                    child: Text("111"),
////                  )
//              ],
//            ),
//          )
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

class SliverCustomHeaderDelegate extends SliverPersistentHeaderDelegate{

  final double collapsedHeight;
  final double expandedHeight;
  final double paddingTop;
  final String coverImgUrl;
  final String title;
  String statusBarMode = 'dark';

  SliverCustomHeaderDelegate({
    this.collapsedHeight,
    this.expandedHeight,
    this.paddingTop,
    this.coverImgUrl,
    this.title,
  });

  @override
  double get minExtent => this.collapsedHeight + this.paddingTop;

  @override
  double get maxExtent => this.expandedHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return Container(
      height: this.maxExtent,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            child: Image.network(this.coverImgUrl, fit: BoxFit.cover,),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              child: SafeArea(
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                )
              )
            ),
          )
        ],
      ),
    );
  }
}