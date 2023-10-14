import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AddProductPage extends StatefulWidget {
  @override
  _AddProductPageState createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  Future<void> addProduct() async {
    final response = await http.post(
      Uri.parse('http://localhost:3005/productApi/products'),
      body: jsonEncode({
        'name': nameController.text,
        'description': descriptionController.text,
        'price': double.parse(priceController.text),
      }),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 201) {
      print("status 201");
    } else {
      print("status 201");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Product'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(labelText: 'Description'),
            ),
            TextField(
              controller: priceController,
              decoration: InputDecoration(labelText: 'Price'),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () {
                addProduct();
              },
              child: Text('Add Product'),
            ),
          ],
        ),
      ),
    );
  }
}
