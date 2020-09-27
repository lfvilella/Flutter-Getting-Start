import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Columns and Rows',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Row and Columns"),
        ),
        backgroundColor: Colors.indigo[100],
        body: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.width;
    final sizeY = MediaQuery.of(context).size.height;
    return Container(
      width: sizeX,
      height: sizeY,
      child: Row(
        // verticalDirection: VerticalDirection.up, -> Using this in Colunm
        textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: createSquares(5),
      ),
    );
  }

  List<Widget> createSquares(int numSquare) {
    int idx = 0;
    List colors = [
      Colors.amber,
      Colors.deepPurple,
      Colors.deepOrange,
      Colors.indigo,
      Colors.lightBlue
    ];
    List<Widget> squares = List<Widget>();

    while (idx < numSquare) {
      Expanded square = Expanded(
        flex: idx,
        child: Container(
          color: colors[idx],
          // width: 60,
          // height: 60,
          child: Text(idx.toString()),
      ));
      idx++;
      squares.add(square);
    }

    return squares;
  }
}
