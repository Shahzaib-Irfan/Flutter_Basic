import 'package:flutter/material.dart';

class Widget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.star,
              size: 100.0,
              color: Colors.yellow,
            ),
            Text(
              'Cool Star Widget',
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}

class Widget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget 2'),
      ),
      body: Center(
        child: Card(
          elevation: 5.0,
          child: Container(
            width: 200.0,
            height: 200.0,
            alignment: Alignment.center,
            child: Text(
              'Cool Card Widget',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ),
      ),
    );
  }
}

class Widget3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget 3'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.green],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Text(
            'Gradient Background Widget',
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class Widget4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget 4'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: 200.0,
          height: 200.0,
          color: Colors.red,
          duration: Duration(seconds: 1),
          curve: Curves.easeInOut,
          child: Center(
            child: Text(
              'Animated Container Widget',
              style: TextStyle(fontSize: 20.0, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
