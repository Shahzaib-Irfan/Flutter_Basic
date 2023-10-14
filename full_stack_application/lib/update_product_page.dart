import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class UpdateProductPage extends StatefulWidget {
  final dynamic product;

  UpdateProductPage({required this.product});

  @override
  _UpdateProductPageState createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  TextEditingController priceController = TextEditingController();

  Future<void> updateProduct() async {
    final response = await http.put(
      Uri.parse(
          'http://your-backend-api.com/products/${widget.product['_id']}'),
      body: jsonEncode({'price': double.parse(priceController.text)}),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      // Product updated successfully
      // You can display a success message or navigate to another page.
    } else {
      // Handle error - display an error message or do something else.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Product'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Product: ${widget.product['name']}'),
            TextField(
              controller: priceController,
              decoration: InputDecoration(labelText: 'Price'),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () {
                updateProduct();
              },
              child: Text('Update Product'),
            ),
          ],
        ),
      ),
    );
  }
}
