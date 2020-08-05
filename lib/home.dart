import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        leading:
            Container(margin: EdgeInsets.all(10), child: Icon(Icons.more_vert)),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10, top: 10),
            child: CircleAvatar(
              backgroundImage: AssetImage("images/profile.jpg"),
            ),
          )
        ],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(left: 20, top: 20, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Vimo',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Beautiful memories'),
                ],
              ),
            ),
          ),
//          SliverToBoxAdapter(
//            child: Container(
//              margin:EdgeInsets.only(left:10,right:10,top:20,bottom:20),
//              child:TextField
//                (decoration:InputDecoration(
//                hintText: "Search Photo",
//                border:InputBorder.none,
//                fillColor: Colors.grey,
//                icon:Icon(Icons.search)
//              ),),
//              decoration: BoxDecoration(
//                border: Border.all(color:Colors.black),
//                borderRadius: BorderRadius.all(Radius.circular(20),),
//              ),
//            ),
//          ),
          SliverStaggeredGrid.countBuilder(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              staggeredTileBuilder: (int index) => StaggeredTile.fit(1),
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Image.asset("images/$index.jpg"),
                );
              },
              itemCount: (8))
        ],
      ),
    ));
  }
}
