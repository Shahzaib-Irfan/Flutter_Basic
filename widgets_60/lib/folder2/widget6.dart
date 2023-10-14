import 'package:flutter/material.dart';

class Widget25 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      color: Colors.blue,
      child: Center(
        child: Icon(
          Icons.favorite,
          size: 60,
          color: Colors.red,
        ),
      ),
    );
  }
}

class Widget26 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Container(
          width: 150,
          height: 150,
          color: Colors.green,
          child: Center(
            child: Icon(
              Icons.camera,
              size: 60,
              color: Colors.white,
            ),
          ),
        ));
  }
}

class Widget27 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.red, Colors.yellow],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Icon(
          Icons.star,
          size: 60,
          color: Colors.amber,
        ),
      ),
    );
  }
}

class Widget28 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.purple,
        shape: BoxShape.rectangle,
      ),
      child: Center(
        child: Icon(
          Icons.music_note,
          size: 60,
          color: Colors.white,
        ),
      ),
    );
  }
}

class Widget29 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.orange,
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Icon(
          Icons.airplanemode_active,
          size: 60,
          color: Colors.blue,
        ),
      ),
    );
  }
}
