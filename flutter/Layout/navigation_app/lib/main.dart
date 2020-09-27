import 'package:flutter/material.dart';
import './art_util.dart';
import './art_route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigating Art ',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: ArtRoute(art: ArtUtil.IMG_VANGOGH),

      // ***** TabController below *****

      // home: DefaultTabController(
      //   length: 3,
      //   child: Scaffold(
      //     appBar: AppBar(
      //       title: Text('Art Tab'),
      //       bottom: TabBar(
      //         tabs: <Widget>[
      //           Tab(
      //             icon: Icon(Icons.art_track),
      //             text: ArtUtil.CARAVAGGIO,
      //           ),
      //           Tab(
      //             icon: Icon(Icons.art_track),
      //             text: ArtUtil.MONET,
      //           ),
      //           Tab(
      //             icon: Icon(Icons.art_track),
      //             text: ArtUtil.VANGOGH,
      //           )
      //         ],
      //         onTap: null,
      //       ),
      //     ),
      //     body: TabBarView(
      //       children: <Widget>[
      //         Container(
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: NetworkImage(ArtUtil.IMG_CARAVAGGIO),
      //               fit: BoxFit.cover
      //               )
      //             ),
      //           ),
      //         Container(
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: NetworkImage(ArtUtil.IMG_MONET),
      //               fit: BoxFit.cover
      //               )
      //             ),
      //           ),
      //         Container(
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: NetworkImage(ArtUtil.IMG_VANGOGH),
      //               fit: BoxFit.cover
      //               )
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
    );
  }
}
