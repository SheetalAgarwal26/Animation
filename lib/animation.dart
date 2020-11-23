import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  var myanicon;
  var animation, animation1, animation2;
  Animation _myAnimation;

  @override
  void initState() {
    super.initState();
    myanicon = AnimationController(
      vsync: this,
      duration: Duration(seconds: 7),
    );
    _myAnimation = CurvedAnimation(parent: myanicon, curve: Curves.easeIn);

    print(myanicon);

    animation = CurvedAnimation(parent: myanicon, curve: Curves.easeInOutSine)
      ..addListener(() {
        setState(() {
          print(animation.value);
        });
      });
    animation1 = CurvedAnimation(parent: myanicon, curve: Curves.bounceInOut)
      ..addListener(() {
        setState(() {
          print(animation1.value);
        });
      });

    animation2 = CurvedAnimation(parent: myanicon, curve: Curves.easeIn)
      ..addListener(() {
        setState(() {
          print(animation2.value);
        });
      });

    print(animation);

    myanicon.forward();
    print(myanicon);
  }

  @override
  void dispose() {
    super.dispose();
    myanicon.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          
          Center(
            child: Card(
              color: Colors.black,
              elevation: 20 * animation.value,
              child: GestureDetector(
                onTap: () {
                  myanicon.forward(from: 0.1);
                  print("clicked ..");
                },
                child: Center(
                  child: Container(
                    
                    width: 290 * animation.value + 50,
                    height: 545.2 * animation.value + 50,
                   // color: Colors.blue[300],
                     decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/d.jpg'),
          fit: BoxFit.fill,
      ),
      color: Colors.deepOrange[200],
      borderRadius: BorderRadius.circular(30.0),
      border: Border.all(
        width: 10,
       color: Colors.red,
      ),
    ), 
                   
                  ),
                ),
              ),
            ),
          ), 
        ],
      ),
    );
  }
}