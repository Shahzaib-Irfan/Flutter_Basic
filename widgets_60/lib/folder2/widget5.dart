import 'package:flutter/material.dart';

class Widget20 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      color: Colors.blue,
      child: Center(
        child: Text(
          'Widget 20',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}

class Widget21 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        width: 150,
        height: 150,
        color: Colors.green,
        child: Center(
          child: Text(
            'Widget 21',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class Widget22 extends StatelessWidget {
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
          child: Text(
            'Widget 22',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ));
  }
}

class Widget23 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.purple,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            'Widget 23',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ));
  }
}

class Widget24 extends StatelessWidget {
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
          child: Text(
            'Widget 24',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ));
  }
}
