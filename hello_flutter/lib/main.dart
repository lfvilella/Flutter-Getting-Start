import 'package:flutter/material.dart';
import './screens/home.dart';
import 'package:flare_flutter/flare_actor.dart';

// Its de same way to rewrite the method main: void main() => runApp(new HelloFlutterApp());
void main() {
  runApp(new HelloFlutterApp());
}

class HelloFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: "Hello Flutter App",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Title in App Bar!!!"),
          ),
          // body: Home()
          // body: HelloText()
          body: Center(
            child: FlareActor("anim/jackOLantern.flr",
            alignment: Alignment.center,
            fit: BoxFit.contain,
            animation: "Untitled",
          )),
        ));
  }
}
