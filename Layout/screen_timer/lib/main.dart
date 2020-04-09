import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Color(0xff009688),
          accentColor: Color(0xff7C4DFF),
          textTheme: TextTheme(
            body1: TextStyle(
              fontSize: 24,
              fontStyle: FontStyle.normal,
              color: Colors.black
            ),
          )
        ),
        title: 'Timer',
        home: Scaffold(
          appBar: AppBar(
            title: Text("AppBar Timer"),
            backgroundColor: Colors.deepOrange,
          ),
          body: TimerScreen(),
        ));
  }
}

class TimerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.grey[300],
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  color: Colors.deepOrange,
                  child: Text("Work"),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  onPressed: null,
                ),
                RaisedButton(
                  color: Colors.green[300],
                  child: Text("Short Break"),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  onPressed: null,
                ),
                RaisedButton(
                  color: Colors.green[700],
                  child: Text("Long Break"),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  onPressed: null,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 121, bottom: 121),
              width: 250,
              height: 250,
              child: Center(
                child: Text(
                  "30:00",
                  style: TextStyle(fontSize: 28),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.green, width: 5),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  color: Colors.deepOrange,
                  child: Text("Stop"),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  onPressed: null,
                ),
                RaisedButton(
                  color: Colors.green[300],
                  child: Text("Restart"),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  onPressed: null,
                ),
              ],
            ),
          ],
        ));
  }
}
