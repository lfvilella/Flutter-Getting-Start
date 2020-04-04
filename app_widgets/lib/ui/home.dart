import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 30, left: 10),
            color: Colors.deepOrangeAccent,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Calabresa",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 30,
                        decoration: TextDecoration.none,
                        color: Colors.blue,
                        fontFamily: 'Oxygen',
                        fontWeight: FontWeight.normal,
                      ),
                    )),
                    Expanded(
                        child: Text(
                      "Mussarela, Calabresa, Cebola",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 20,
                        decoration: TextDecoration.none,
                        color: Colors.blue,
                        fontFamily: 'Oxygen',
                        fontWeight: FontWeight.normal,
                      ),
                    ))
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Frango",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 30,
                        decoration: TextDecoration.none,
                        color: Colors.blue,
                        fontFamily: 'Oxygen',
                        fontWeight: FontWeight.normal,
                      ),
                    )),
                    Expanded(
                        child: Text(
                      "Mussarela, Frango, Catupiry, Tomate",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 20,
                        decoration: TextDecoration.none,
                        color: Colors.blue,
                        fontFamily: 'Oxygen',
                        fontWeight: FontWeight.normal,
                      ),
                    ))
                  ],
                ),
                PizzaImageWidget(),
                OrderButtom(),
              ],
            )));
  }
}

class PizzaImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/pizza.jpg', width: 300, height: 400);
  }
}

class OrderButtom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin: EdgeInsets.only(top: 20),
      child: RaisedButton(
        child: Text("Order Your Pizza"),
        color: Colors.lightGreen,
        elevation: 5.0,
        onPressed: () {
          order(context);
        },
      ),
    );
    return button;
  }

  void order(BuildContext context) {
    var alert = AlertDialog(
      title: Text("Order Completed"),
      content: Text("Thanks for you order!"),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) => alert);
  }
}
