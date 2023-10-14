import 'package:flutter/material.dart';

class Widget15 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      color: Colors.blue,
      child: Center(
        child: Text(
          'Widget 15',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}

class Widget16 extends StatelessWidget {
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
            'Widget 16',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class Widget17 extends StatelessWidget {
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
            'Widget 17',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ));
  }
}

class Widget18 extends StatelessWidget {
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
            'Widget 18',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ));
  }
}

class Widget19 extends StatelessWidget {
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
            'Widget 19',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ));
  }
}
