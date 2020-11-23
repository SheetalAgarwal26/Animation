import 'package:flutter/material.dart';
import 'animation.dart';
void main() {
  runApp(
    MaterialApp(
          debugShowCheckedModeBanner : false,
      home: Scaffold(
        backgroundColor: Colors.deepOrange[100],
        appBar: AppBar(
          leading: Icon(Icons.menu,
                       color: Colors.black,
                       size: 36.0,),
          backgroundColor: Colors.deepOrange[300],
          title: Text('Animation App',
          style: TextStyle(
                      fontSize: 25.0,
                    ),),
           actions: <Widget>[
                      IconButton(icon: Icon(
                        Icons.notifications,
                        color: Colors.black,
                        size: 36.0,
                        ), 
                        onPressed: null,
                      ),
                      IconButton(icon: Icon(
                        Icons.account_box,
                        color: Colors.black,
                        size: 36.0,
                        ),
                        onPressed:
                         null),
                    ],
        ),
        body: MyApp(),
      ),
    ),
  );
}
