import 'dart:ui';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/rendering/custom_paint.dart';
import 'package:flutter/src/rendering/custom_paint.dart';
import 'package:flutter/src/widgets/basic.dart';
// import 'package:demo_container/screens/tiger.dart';
// import 'package:demo_container/screens/area_calc.dart';

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
          body: HomePizza()),
    );
  }
}

class HomePizza extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.width;
    final sizeY = MediaQuery.of(context).size.height;

    return Container(
      width: sizeX,
      height: sizeY,
      child: ListView(
        children: showContacts(),
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
      Container square = Container(
        color: colors[idx % 5],
        // width: 100,
        height: 100,
        child: Text(idx.toString()),
      );
      idx++;
      squares.add(square);
    }

    return squares;
  }

  Widget createSquare(int position) {
    List colors = [
      Colors.amber,
      Colors.deepPurple,
      Colors.deepOrange,
      Colors.indigo,
      Colors.lightBlue
    ];

    Container square = Container(
      color: colors[position % 5],
      width: 100,
      height: 100,
      child: Text(position.toString()),
    );
    return square;
  }

  Widget createSeparetor(int position) {
    Container separator = Container(
      height: 15,
      color: Colors.black,
    );
    return separator;
  }

  List<Widget> showPizzaLayout(double sizeX, double sizeY) {
    List<Widget> layoutChildren = List<Widget>();
    Container backGround = Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: NetworkImage('http://bit.ly/pizzaimage'),
        fit: BoxFit.fitHeight,
      )),
    );
    layoutChildren.add(backGround);

    Positioned pizzaCard = Positioned(
      top: sizeY / 20,
      left: sizeX / 20,
      child: Card(
        elevation: 12,
        color: Colors.white70,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Text(
              "Pizza Margherita",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                "This delicious pizza is made of tomato,\n mozzarela and bazil. \n\n Seriously you can\'t miss it!",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[800],
                ),
              ),
            )
          ],
        ),
      ),
    );
    layoutChildren.add(pizzaCard);

    Positioned buttonOrder = Positioned(
      bottom: sizeY / 20,
      left: sizeX / 20,
      width: sizeX - (sizeX / 10),
      child: RaisedButton(
        elevation: 12,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        color: Colors.orange[900],
        child: Text(
          'Order Now!',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        onPressed: () {},
      ),
    );
    layoutChildren.add(buttonOrder);

    return layoutChildren;
  }

  List<Contact> buildContacts() {
    List<Contact> contacts = List<Contact>();
    contacts.add(Contact('Thomas', 'The Matrix', Icons.sentiment_neutral));
    contacts.add(Contact('Max', 'The Maaxx', Icons.sentiment_satisfied));
    contacts.add(Contact('Jesse', 'The Helper', Icons.sentiment_dissatisfied));
    contacts.add(Contact('Mr White', 'The Meth', Icons.sentiment_very_satisfied));
    contacts.add(Contact('Turing', 'The Machine', Icons.sentiment_very_dissatisfied));
    return contacts;
  }

  List<ListTile> showContacts(){
    List<Contact> contacts = buildContacts();
    for (var i = 0; i < 20; i++) {
      contacts.addAll(buildContacts());
    }

    List<ListTile> list = List<ListTile>();
    contacts.forEach((contact) {
      list.add(ListTile(
        title: Text(contact.name),
        subtitle: Text(contact.subtitle),
        leading: CircleAvatar(
          child: Icon(contact.icon),
          backgroundColor: Colors.amber[600],
        ),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () => true,
      ));
    });
    return list;
  }
}

class Contact {
  String name;
  String subtitle;
  IconData icon;

  Contact(this.name, this.subtitle, this.icon);
}
