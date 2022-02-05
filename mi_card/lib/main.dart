import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.red,
      // ),
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          // child: Column(
          //   // mainAxisSize: MainAxisSize.min,
          //
          //   // verticalDirection: VerticalDirection.up,
          //   // verticalDirection: VerticalDirection.down,
          //
          //   // mainAxisAlignment: MainAxisAlignment.start,
          //   // mainAxisAlignment: MainAxisAlignment.end,
          //   // mainAxisAlignment: MainAxisAlignment.center,
          //   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //
          //   // crossAxisAlignment: CrossAxisAlignment.start,
          //   // crossAxisAlignment: CrossAxisAlignment.end,
          //   crossAxisAlignment: CrossAxisAlignment.stretch,
          //   children: <Widget>[
          //     Container(
          //       height: 100.0,
          //       width: 100.0,
          //       // margin: EdgeInsets.all(20.0),
          //       // margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
          //       // margin: EdgeInsets.fromLTRB(30.0, 10.0, 50.0, 20.0),
          //       // margin: EdgeInsets.only(left: 30.0),
          //       // padding: EdgeInsets.all(20.0),
          //       color: Colors.white,
          //       child: Text('Container 1'),
          //     ),
          //     SizedBox(
          //       width: 20.0,
          //     ),
          //     Container(
          //       height: 100.0,
          //       width: 100.0,
          //       color: Colors.blue,
          //       child: Text('Container 2'),
          //     ),
          //     Container(
          //       height: 100.0,
          //       width: 100.0,
          //       color: Colors.red,
          //       child: Text('Container 3'),
          //     ),
          //   ],
          // ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                // backgroundColor: Colors.red,
                backgroundImage: AssetImage('images/shanta.jpeg'),
              ),
              Text(
                'Sajid Shanta',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),

              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                  color: Colors.teal.shade100,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),

              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+880 1791 2876 13',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'sajid.shanta@nsu.edu',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
