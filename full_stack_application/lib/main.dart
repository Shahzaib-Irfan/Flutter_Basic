import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:full_stack_application/add_product_page.dart';
import 'package:full_stack_application/view_product_page.dart';
import 'package:full_stack_application/update_product_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
      routes: {
        '/add_product': (context) => AddProductPage(),
        '/view_product': (context) => ViewProductsPage(),
      },
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product App'),
      ),
      body: ViewProductsPage(),
      drawer: AppDrawer(),
    );
  }
}

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Product App',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: Text('View Products'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/view_product');
            },
          ),
          ListTile(
            title: Text('Add Product'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/add_product');
            },
          ),
          // ListTile(
          //   title: Text('Update Product'),
          //   onTap: () {
          //     Navigator.pop(context);
          //     Navigator.pushNamed(context, '/update_product');
          //   },
          // ),
        ],
      ),
    );
  }
}
