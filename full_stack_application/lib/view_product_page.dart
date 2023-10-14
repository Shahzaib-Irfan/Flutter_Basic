import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ViewProductsPage extends StatefulWidget {
  @override
  _ViewProductsPageState createState() => _ViewProductsPageState();
}

class _ViewProductsPageState extends State<ViewProductsPage> {
  List<dynamic> products = [];

  Future<void> fetchProducts() async {
    final response = await http.get(
        Uri.parse('http://localhost:3005/productApi/products/getProducts'));

    if (response.statusCode == 200) {
      setState(() {
        products = jsonDecode(response.body);
      });
    } else {
      // Handle error - display an error message or do something else.
    }
  }

  @override
  void initState() {
    fetchProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Products'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index]['name']),
            subtitle: Text(products[index]['description']),
            trailing: Text('Rs.${products[index]['price']} /-'),
          );
        },
      ),
    );
  }
}
