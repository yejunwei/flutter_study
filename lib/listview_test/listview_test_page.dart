import 'package:flutter/material.dart';
import 'package:flutter_yjw_study/listview_test/custom_sliver_header_page.dart';
import 'package:flutter_yjw_study/listview_test/over_scroll_behavior.dart';
import 'package:flutter_yjw_study/listview_test/sliver_float_demo_page.dart';

class ListViewTestPage extends StatefulWidget{

  _ListViewTestPageState createState() => _ListViewTestPageState();
}

class _ListViewTestPageState extends State<ListViewTestPage>{

  ScrollController _scrollController = new ScrollController();
  bool showToTopBtn = false;
  String _progess = "0%";

  @override
  void initState() {
    super.initState();

    _scrollController.addListener((){
      print(_scrollController.offset);
      var offset = _scrollController.offset;
      if(offset < 400 && showToTopBtn){
        setState(() {
          showToTopBtn = false;
        });
      }else if(_scrollController.offset >= 400 && showToTopBtn == false){
        setState(() {
          showToTopBtn = true;
        });
      }


    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("listView Test"),
      ),
      floatingActionButton: !showToTopBtn ? null : FloatingActionButton(
        child: Text("最上方"),
        onPressed: (){
          _scrollController.animateTo(0, duration: Duration(milliseconds: 200), curve: Curves.ease);
        },
      ),
      body: Center(
        child: Container(
          color: Colors.black26,
          width: double.infinity,
          height: double.infinity,
          child: Scrollbar(
            child: NotificationListener<ScrollNotification>(
              onNotification: (ScrollNotification notification){
                double progress = notification.metrics.pixels / notification.metrics.maxScrollExtent;
                setState(() {
                  _progess = "${(progress * 100).toInt()}%";
                });
              },
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  ScrollConfiguration(
                    behavior: OverScrollBehavior(

                    ),
                    child: GridView(
                      controller: _scrollController,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,

                      ),
                      children: <Widget>[
                        FlatButton(
                          child: Text("Sliver-float"),
                          color: Colors.blue,
                          onPressed: ()=>{
                            Navigator.push(context, MaterialPageRoute(builder:(context){
                              return SliverFloatDemoPage();
                            }))
                          },
                        ),
                        FlatButton(
                          child: Text("custom_sliver-header"),
                          color: Colors.blue,
                          onPressed: ()=>{
                            Navigator.push(context, MaterialPageRoute(builder:(context){
                              return CustomSliverHeaderPage();
                            }))
                          },
                        ),
                        Text("222"),
                        Text("333"),
                        Text("444"),
                        Text("555"),
                        Text("666"),
                        Text("777"),
                        Text("888"),
                        Text("999"),
                        Text("1——11"),
                        Text("1——22"),
                        Text("1——33"),
                        Text("1——44"),
                        Text("1——55"),


                      ],
                    ),
                  ),
                  CircleAvatar(
                    radius: 30,
                    child: Text(_progess),
                    backgroundColor: Colors.amber,
                  )
                ],
              ),
            ),
          )
        )
      ),
    );
  }
}