import 'package:flutter/material.dart';

class Widget6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Number 1'),
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
            ElevatedButton(
              onPressed: () {
                // Add some functionality here
              },
              child: Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}

class Widget7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Number 2'),
      ),
      body: Center(
        child: Card(
          elevation: 5.0,
          child: Container(
            width: 200.0,
            height: 200.0,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Cool Card Widget',
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    // Add some functionality here
                  },
                  child: Text('Click Me'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Widget8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Number 3'),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Gradient Background Widget',
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Add some functionality here
                },
                child: Text('Click Me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Widget9 extends StatefulWidget {
  @override
  _Widget9State createState() => _Widget9State();
}

class _Widget9State extends State<Widget9> {
  double _containerWidth = 200.0;
  double _containerHeight = 200.0;
  Color _containerColor = Colors.red;

  void _toggleContainer() {
    setState(() {
      if (_containerWidth == 200.0) {
        _containerWidth = 250.0;
        _containerHeight = 250.0;
        _containerColor = Colors.blue;
      } else {
        _containerWidth = 200.0;
        _containerHeight = 200.0;
        _containerColor = Colors.red;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Number 4'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _containerWidth,
          height: _containerHeight,
          color: _containerColor,
          duration: Duration(seconds: 1),
          curve: Curves.easeInOut,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Animated Container Widget',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    _toggleContainer();
                  },
                  child: Text('Toggle Container'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Widget10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Number 5'),
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
            ElevatedButton(
              onPressed: () {
                // Add some functionality here
              },
              child: Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}
