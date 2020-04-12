import 'package:flutter/material.dart';
import './util.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class Details extends StatelessWidget {
  final String drinkPath;
  final String drinkTag;

  Details(this.drinkPath, this.drinkTag);

  @override
  Widget build(BuildContext context) {
    timeDilation = 3;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Animation'),
      ),
      body: Center(
        child: Util.buildHeroDestination(drinkPath, drinkTag, width),
      ),
    );
  }
}