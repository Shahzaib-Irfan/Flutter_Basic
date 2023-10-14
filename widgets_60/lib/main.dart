import 'package:flutter/material.dart';
import 'package:widgets_60/folder1/widget1.dart';
import 'package:widgets_60/folder1/widget2.dart';
import 'package:widgets_60/folder1/widget3.dart';
import 'package:widgets_60/folder1/widget4.dart';
import 'package:widgets_60/folder2/widget5.dart';
import 'package:widgets_60/folder2/widget6.dart';
import 'package:widgets_60/folder2/widget7.dart';
import 'package:widgets_60/folder2/widget8.dart';
import 'package:widgets_60/folder3/widget9.dart';
import 'package:widgets_60/folder3/widget10.dart';
import 'package:widgets_60/folder3/widget11.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedWidgetIndex = 0;

  List<Widget> _widgets = [
    Widget1(),
    Widget2(),
    Widget3(),
    Widget4(),
    Widget6(), // Add Widget6
    Widget7(), // Add Widget7
    Widget8(), // Add Widget8
    Widget9(), // Add Widget9
    Widget10A(),
    Widget11(),
    Widget12(),
    Widget13(),
    Widget14(),
    Widget15(),
    Widget16(),
    Widget17(),
    Widget18(),
    Widget19(),
    Widget20(),
    Widget21(),
    Widget22(),
    Widget23(),
    Widget24(),
    Widget25(),
    Widget26(),
    Widget27(),
    Widget28(),
    Widget29(),
    Widget30(),
    Widget31(),
    Widget32(),
    Widget33(),
    Widget34(),
    Widget35(),
    Widget36(),
    Widget37(),
    Widget38(),
    Widget39(),
    Widget40(),
    Widget41(),
    Widget42(),
    Widget43(),
    Widget44(),
    Widget45(),
    Widget46(),
    Widget47(),
    Widget48(),
    Widget49(),
    RoomBookingWidget(),
    ReservationWidget(1),
    AirlineTicketWidget(),
  ];

  void _selectWidget(int index) {
    setState(() {
      _selectedWidgetIndex = index;
    });
    Navigator.of(context).pop(); // Close the drawer
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Drawer App'),
      ),
      body: _widgets[_selectedWidgetIndex],
      drawer: Drawer(
        child: SingleChildScrollView(
          // Wrap the ListView with SingleChildScrollView
          child: Column(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text('Select a Widget'),
              ),
              for (int i = 0; i < _widgets.length; i++)
                ListTile(
                  textColor: Colors.black,
                  title: Text('Widget ${i + 1}'),
                  onTap: () => _selectWidget(i),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
