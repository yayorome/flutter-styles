import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final styleTitle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final styleSubtitle = TextStyle(fontSize: 18, color: Colors.grey[600]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _headerImage(),
            _rowTitle(),
            _rowActions(),
            _imageText(),
            _imageText(),
            _imageText(),
            _imageText(),
            _imageText(),
            _imageText(),
            _imageText(),
          ],
        ),
      ),
    );
  }

  Widget _headerImage() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            'https://pixabay.com/get/55e3d7464a5aac14f1dc8460da293277133edced515579_640.jpg'),
        height: 280,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _rowTitle() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Titulo de Imagen', style: styleTitle),
                  SizedBox(height: 7),
                  Text('Subtitulo de Imagen',
                      style: styleSubtitle, overflow: TextOverflow.ellipsis)
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 35,
            ),
            Text(
              '41',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }

  Widget _rowActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _createAction(Icons.phone, 'Call'),
        _createAction(Icons.near_me, 'Route'),
        _createAction(Icons.share, 'Share')
      ],
    );
  }

  Widget _createAction(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blueAccent,
          size: 40,
        ),
        SizedBox(height: 5),
        Text(
          text,
          style: TextStyle(color: Colors.blueAccent),
        )
      ],
    );
  }

  Widget _imageText() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
        child: Text(
            'Commodo occaecat culpa labore duis in aliquip ea laboris sit incididunt cillum id ut aliquip. Ea sint in sint nisi labore. Quis deserunt excepteur eiusmod sit proident exercitation laborum laboris dolor aute cillum in.',
            textAlign: TextAlign.justify),
      ),
    );
  }
}
