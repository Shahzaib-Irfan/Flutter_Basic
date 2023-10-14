import 'package:flutter/material.dart';

class Widget35 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.green],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(20),
        ));
  }
}

class Widget36 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.red, Colors.yellow],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(20),
            )));
  }
}

class Widget37 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [Colors.purple, Colors.orange],
            radius: 0.7,
          ),
          borderRadius: BorderRadius.circular(20),
        ));
  }
}

class Widget38 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.cyan, Colors.teal],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(20),
        ));
  }
}

class Widget39 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.indigo, Colors.deepOrange],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          border: Border.all(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(20),
        ));
  }
}
