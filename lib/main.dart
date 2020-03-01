import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(
        title: Center(
          child: Text('My Library',
          style: TextStyle(
          fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic ,
            letterSpacing: 2.0,
          ),
          ),
      ),
      backgroundColor: Colors.blueGrey[900],
      ),
      body:Column(
        children:<Widget>[
        Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget>[
          Container(
            padding: EdgeInsets.all(40.0),
            child: Image(
            height: 80,
            image: NetworkImage('https://image.flaticon.com/icons/png/512/64/64673.png'),
          ),),
          Text('Search Books...',
          style: TextStyle(
              fontSize: 30,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic
            ),
          ),
        ]
      ),Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                Container(
                  padding: EdgeInsets.all(30.0),
                  child: Image(
                    height: 80,
                    image: NetworkImage('https://image.flaticon.com/icons/png/512/57/57102.png'),
                  ),),
                Text('Read Books...',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic
                  ),
                ),
              ]
          ),Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                Container(
                  padding: EdgeInsets.all(30.0),
                  child: Image(
                    height: 80,
                    image: NetworkImage('https://image.flaticon.com/icons/png/512/13/13983.png'),
                  ),),
                Text('Download Books...',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic
                  ),
                ),
              ]
          ),
    ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          print('Opening Search Options...');
        },
        child: Text('Search Library'),
        backgroundColor: Colors.blueGrey[900],
      ),
    );
  }
}

