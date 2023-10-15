import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:full_stack_application/update_product_page.dart';

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

  // Function to navigate to the UpdatedProductPage for editing
  void navigateToEditProduct(int index) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => UpdateProductPage(
          product: products[index],
        ),
      ),
    );
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
          return Card(
            margin: EdgeInsets.all(8.0), // Add margin to the card
            child: ListTile(
              title: Text(products[index]['name']),
              subtitle: Text(products[index]['description']),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('Rs.${products[index]['price']} /-'),
                  Row(
                    mainAxisSize: MainAxisSize.min, // Keep the buttons together
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit),
                        tooltip: 'Update',
                        onPressed: () => navigateToEditProduct(index),
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete),
                        tooltip: 'Delete',
                        onPressed: () => {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
