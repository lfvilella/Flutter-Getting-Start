import 'dart:ui';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/rendering/custom_paint.dart';
import 'package:flutter/src/rendering/custom_paint.dart';
import 'package:flutter/src/widgets/basic.dart';
// import 'package:demo_container/screens/tiger.dart';
// import 'package:demo_container/screens/area_calc.dart';
import 'package:demo_container/screens/pizza.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack',
      home: Scaffold(
          appBar: AppBar(
            title: Text('AppBar Stack'),
          ),
          // body: TigerContainer(),
          // body: HomePizza(),
          body: CarGallery()),
    );
  }
}

class CarGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.width;
    final sizeY = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.blue[100],
      width: sizeX,
      height: sizeY,
      child: GridView.count(
        scrollDirection: Axis.vertical,
        crossAxisCount: 2,
        children: createGallery(50),
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        padding: EdgeInsets.all(5),
      )
    );
  }

  List<Widget> createGallery(int numImages) {
    List<Widget> images = List<Widget>();
    List<String> urls = List<String>();
    urls.add('http://bit.ly/gvcar_1');
    urls.add('http://bit.ly/gvcar_2');
    urls.add('http://bit.ly/gvcar_3');
    urls.add('http://bit.ly/gvcar_4');
    urls.add('http://bit.ly/gvcar_5');

    Widget image;
    int i = 0;

    while (i < numImages){
      image = Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(urls[i%5]),
          ),
        ),
      );
      images.add(image);
      i++;
    }

    return images;
  }
}