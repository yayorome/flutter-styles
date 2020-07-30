import 'package:flutter/material.dart';

class MediumPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: <Widget>[_pageUp(), _pageDown(context)],
    ));
  }

  Widget _pageUp() {
    return Stack(
      children: <Widget>[_backgroundColor(), _backgroundImage(), _infoData()],
    );
  }

  Widget _pageDown(BuildContext context) {
    return Stack(
      children: <Widget>[_backgroundColor(), _downButton(context)],
    );
  }

  Widget _backgroundColor() {
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromRGBO(108, 194, 221, 1));
  }

  Widget _backgroundImage() {
    return Container(
        width: double.infinity,
        height: double.infinity,
        child: Image(
          image: AssetImage('assets/scroll-1.png'),
          fit: BoxFit.cover,
        ));
  }

  Widget _infoData() {
    final textStyle = TextStyle(color: Colors.white, fontSize: 50);

    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20),
          Text(
            '11°',
            style: textStyle,
          ),
          Text(
            'Miércoles',
            style: textStyle,
          ),
          Expanded(child: Container()),
          Icon(
            Icons.keyboard_arrow_down,
            size: 70,
            color: Colors.white,
          )
        ],
      ),
    );
  }

  Widget _downButton(BuildContext context) {
    return Container(
        child: Center(
            child: RaisedButton(
                shape: StadiumBorder(),
                color: Colors.blue,
                textColor: Colors.white,
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    child: Text(
                      'Bienvenidos',
                      style: TextStyle(fontSize: 20),
                    )),
                onPressed: () {
                  Navigator.pushNamed(context, 'advanced');
                })));
  }
}
