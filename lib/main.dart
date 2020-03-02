import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(
    MaterialApp(
        home: Home()
    )
  );
}
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children:<Widget>[
            Icon(Icons.menu,semanticLabel: "menu", color :Colors.black,),
            Text('My Library',
            style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic ,
            letterSpacing: 0.8,
              color: Colors.black,
              fontSize: 28,
              ),
            ),
            Icon(Icons.search,color:Colors.black,semanticLabel: "menu",),
          ]
        ),
      backgroundColor: Colors.tealAccent[400],
      ),
      body:ListView(
        children:<Widget>[
          Container(
          color: Colors.lightGreenAccent[400],
          padding: EdgeInsets.symmetric(horizontal:20,vertical:18),
          margin: EdgeInsets.only(top:20,left:40,right:40),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children:<Widget>[
            Container(
              child: Image(
              height: 50,
              image: NetworkImage('https://image.flaticon.com/icons/png/512/64/64673.png'),
            ),),
            Container(
              padding: EdgeInsets.only(left:20),
              child: Text('Search Books',
              style: TextStyle(
                  fontSize: 30,
                //fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic
                ),
              ),
            ),
          ]
      ),
        ),
          Container(
            color: Colors.blue[500],
            padding: EdgeInsets.symmetric(horizontal:20,vertical:18),
            margin: EdgeInsets.only(top:20,left:40,right:40),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:<Widget>[
                  Container(
                    child: Image(
                      height: 50,
                      image: NetworkImage('https://image.flaticon.com/icons/png/512/57/57102.png'),
                    ),),
                  Container(
                    padding: EdgeInsets.only(left:30),
                    child: Text('Read Books',
                      style: TextStyle(
                          fontSize: 30,
                          //fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic
                      ),
                    ),
                  ),
                ]
            ),
          ),
          Container(
            color: Colors.deepOrange,
            padding: EdgeInsets.symmetric(horizontal:20,vertical:18),
            margin: EdgeInsets.only(top:20,left:40,right:40),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:<Widget>[
                  Container(
                    child: Image(
                      height: 50,
                      image: NetworkImage('https://image.flaticon.com/icons/png/512/13/13983.png'),
                    ),),
                  Text('Download Books',
                    style: TextStyle(
                        fontSize: 30,
                        //fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic
                    ),
                  ),
                ]
            ),
          ),
          Container(
            margin: EdgeInsets.only(left:20,top:40,),
            child: Row(
              children: <Widget>[
                Icon(Icons.star_border,color: Colors.red,size: 15,),
                Text('New Arrivals:',style:TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 18
                )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:<Widget>[
                Container(
                  child: Image(
                    height: 130,
                    image: NetworkImage('https://img1.od-cdn.com/ImageType-400/6135-1/3E2/C30/34/%7B3E2C3034-FEEA-41BC-A9A5-AB923FE9470F%7DImg400.jpg',
                  ),),
                ),
                Container(
                  child: Image(
                    height: 130,
                    image: NetworkImage('https://images-na.ssl-images-amazon.com/images/I/51Ss-7j3v5L._SX362_BO1,204,203,200_.jpg',
                    ),),
                ),
                Container(
                  child: Image(
                    height: 130,
                    image: NetworkImage('https://images-na.ssl-images-amazon.com/images/I/51bLgjIRDuL._SX258_BO1,204,203,200_.jpg',
                    ),),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left:20,top:30,),
            child: Row(
              children: <Widget>[
                Icon(Icons.history,color: Colors.blueGrey,size: 15,),
                Text('Recently Viewed:',style:TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 18
                )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:10,bottom:20),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left:25),
                  child: Image(
                    height: 130,
                    image: NetworkImage('https://2.bp.blogspot.com/-06CvjnEGBTA/WxdC-CfBKJI/AAAAAAAALiU/NHv70aLX5CwnZkB7jMJ0pYTtDVD2Fty1ACEwYBhgL/s320/Java%2BA%2BBeginner%2527s%2BGuide%252C%2BSeventh%2BEdition.jpg',
                    ),),
                ),
                Container(
                  margin: EdgeInsets.only(left:25),
                  child: Image(
                    height: 130,
                    image: NetworkImage('https://se2012.weebly.com/uploads/5/8/5/9/5859191/7721229.png',
                    ),),
                ),
              ],
            ),
          ),
    ]
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(bottom:12,top:12),
        color: Colors.tealAccent[400],
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:<Widget>[
            Icon(Icons.explore,size: 20,),
            Text('Explore',
              style: TextStyle(
              fontSize: 18,
              ),
            ),
            Icon(Icons.assignment_late,size: 20,),
            Text('Issued',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Icon(Icons.cloud_download,size: 20,),
            Text('Downloads',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
    ]
    ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          print('Opening Search Options...');
        },
        child: Icon(Icons.share),
        backgroundColor: Colors.blueGrey[900],
      ),
    );
  }
}

