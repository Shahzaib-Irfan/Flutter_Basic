import 'package:flutter/material.dart';

class InteractiveWidgetsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Interactive Widgets'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return Widget40(); // Full-Screen Dialog Widget
                },
              );
            },
            child: Text('Show Dialog'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Widget41(), // PageView Widget
                ),
              );
            },
            child: Text('Open PageView'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Widget42(), // WebView Widget
                ),
              );
            },
            child: Text('Open WebView'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Widget43(), // Google Maps Widget
                ),
              );
            },
            child: Text('Open Google Map'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Widget44(), // Video Player Widget
                ),
              );
            },
            child: Text('Play Video'),
          ),
        ],
      ),
    );
  }
}

class Widget40 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Text('Full-Screen Dialog (Widget 40)'),
        ),
      ),
    );
  }
}

class Widget41 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView (Widget 41)'),
      ),
      body: PageView(
        children: <Widget>[
          Container(
            color: Colors.blue,
            child: Center(child: Text('Page 1')),
          ),
          Container(
            color: Colors.green,
            child: Center(child: Text('Page 2')),
          ),
          Container(
            color: Colors.orange,
            child: Center(child: Text('Page 3')),
          ),
        ],
      ),
    );
  }
}

class Widget42 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WebView (Widget 42)'),
      ),
      body: Container(
        color: Colors.white, // Replace with WebView implementation
        child: Center(
          child: Text('WebView Content'),
        ),
      ),
    );
  }
}

class Widget43 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Maps (Widget 43)'),
      ),
      body: Container(
        color: Colors.white, // Replace with Google Maps implementation
        child: Center(
          child: Text('Google Maps Content'),
        ),
      ),
    );
  }
}

class Widget44 extends StatefulWidget {
  @override
  _Widget44State createState() => _Widget44State();
}

class _Widget44State extends State<Widget44> {
  bool _isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player (Widget 44)'),
      ),
      body: Center(
        child: _isPlaying
            ? Container(
                // Replace with Video Player implementation
                width: 320,
                height: 180,
                color: Colors.black,
                alignment: Alignment.center,
                child: Text('Video Player'),
              )
            : CircularProgressIndicator(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isPlaying = !_isPlaying;
          });
        },
        child: Icon(
          _isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}
