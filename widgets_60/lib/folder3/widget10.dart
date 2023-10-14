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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Widget45(), // Image Gallery
                ),
              );
            },
            child: Text('Image Gallery (Widget 45)'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Widget46(), // Audio Player
                ),
              );
            },
            child: Text('Audio Player (Widget 46)'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Widget47(), // Video Player
                ),
              );
            },
            child: Text('Video Player (Widget 47)'),
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return Widget48(); // Drawing Canvas
                },
              );
            },
            child: Text('Drawing Canvas (Widget 48)'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Widget49(), // PDF Viewer
                ),
              );
            },
            child: Text('PDF Viewer (Widget 49)'),
          ),
        ],
      ),
    );
  }
}

class Widget45 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Gallery (Widget 45)'),
      ),
      body: Center(
        child: Image.network(
          'https://via.placeholder.com/300',
          width: 300,
          height: 300,
        ),
      ),
    );
  }
}

class Widget46 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Audio Player (Widget 46)'),
      ),
      body: Center(
        child: Icon(
          Icons.audiotrack,
          size: 100.0,
          color: Colors.blue,
        ),
      ),
    );
  }
}

class Widget47 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player (Widget 47)'),
      ),
      body: Center(
        child: Icon(
          Icons.play_circle_fill,
          size: 100.0,
          color: Colors.red,
        ),
      ),
    );
  }
}

class Widget48 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Center(
        child: Text('Drawing Canvas (Widget 48)'),
      ),
    );
  }
}

class Widget49 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Viewer (Widget 49)'),
      ),
      body: Center(
        child: Icon(
          Icons.picture_as_pdf,
          size: 100.0,
          color: Colors.green,
        ),
      ),
    );
  }
}
