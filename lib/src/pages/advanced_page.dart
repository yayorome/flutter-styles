import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class AdvancedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        _background(),
        SingleChildScrollView(
            child: Column(
          children: <Widget>[_title(), _buttonCards()],
        ))
      ]),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _background() {
    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0, 0.6),
              end: FractionalOffset(0, 1),
              colors: [
            Color.fromRGBO(52, 54, 101, 1),
            Color.fromRGBO(35, 37, 57, 1)
          ])),
    );

    final spot = Transform.rotate(
        angle: -pi / 5,
        child: Container(
          height: 360,
          width: 360,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(90),
              gradient: LinearGradient(
                  begin: FractionalOffset(0, 0.6),
                  end: FractionalOffset(0, 1),
                  colors: [
                    Color.fromRGBO(236, 98, 188, 1),
                    Color.fromRGBO(241, 142, 172, 1)
                  ])),
        ));

    return Stack(
      children: <Widget>[gradient, Positioned(top: -100, child: spot)],
    );
  }

  Widget _title() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Classify transaction',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text('Classify this transaction into a particular category',
                style: TextStyle(color: Colors.white, fontSize: 18))
          ],
        ),
      ),
    );
  }

  List<BottomNavigationBarItem> _navigationButtons() {
    final List<BottomNavigationBarItem> list = [
      BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today), title: Container()),
      BottomNavigationBarItem(
          icon: Icon(Icons.pie_chart_outlined), title: Container()),
      BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle), title: Container()),
    ];
    return list;
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Color.fromRGBO(55, 57, 84, 1),
            primaryColor: Colors.pinkAccent,
            textTheme: Theme.of(context).textTheme.copyWith(
                caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1)))),
        child: BottomNavigationBar(items: _navigationButtons()));
  }

  Widget _buttonCards() {
    return Table(
      children: [
        TableRow(children: [
          _createButton(Colors.blue, Icons.border_all, 'General'),
          _createButton(Colors.purpleAccent, Icons.directions, 'Directions')
        ]),
        TableRow(children: [
          _createButton(Colors.greenAccent, Icons.satellite, 'Satellite'),
          _createButton(Colors.teal, Icons.shop, 'Shop')
        ]),
        TableRow(children: [
          _createButton(Colors.orangeAccent, Icons.cloud, 'Cloud'),
          _createButton(Colors.amber, Icons.headset, 'Headset')
        ]),
        TableRow(children: [
          _createButton(Colors.blue, Icons.border_all, 'General'),
          _createButton(Colors.blue, Icons.border_all, 'General')
        ]),
      ],
    );
  }

  Widget _createButton(Color color, IconData icon, String text) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
        child: Container(
          height: 180,
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, .7),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              CircleAvatar(
                backgroundColor: color,
                radius: 35,
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Text(
                text,
                style: TextStyle(color: color, fontSize: 15),
              ),
              SizedBox(
                height: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}
