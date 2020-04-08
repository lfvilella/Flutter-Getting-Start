import 'package:flutter/material.dart';

class TigerContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.only(top:20, left:37),
          width: 300,
          height: 520,
          // child: FlutterLogo(),
          decoration: BoxDecoration(
            color: Colors.orange,
            image: DecorationImage(
              image: NetworkImage('http://bit.ly/flutter_tiger'),
              // fit: BoxFit.fill,
              fit: BoxFit.contain,
              repeat: ImageRepeat.repeatY
            ),
            /* gradient: RadialGradient( // -> LinearGradiante or RadialGradient
                // begin: Alignment.topCenter,
                // end: Alignment.bottomCenter,
                // begin: Alignment(0.0, -1.0),
                // end: Alignment(0.0, -0.8),
                // tileMode: TileMode.mirror,
                tileMode: TileMode.clamp, // -> = NORMAL
                radius: 0.25,
                center: Alignment(0.8, -0.7),
                colors: [Colors.blue, Colors.green, Colors.deepPurple, Colors.pink]), */
            shape: BoxShape.rectangle,
            // borderRadius: BorderRadius.all(Radius.circulsar(25)),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            )
          ),
        );
  }
}