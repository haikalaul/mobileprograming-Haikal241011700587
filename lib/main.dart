import 'package:flutter/material.dart';
import 'package:flutter_application_1/Helloworld.dart';
import 'package:flutter_application_1/Column_widget.dart';
import 'package:flutter_application_1/row_widget.dart';
import 'package:flutter_application_1/ui/produk_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Flutter',
      home: ProdukForm());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const Center(
        child: Text(
          'Halo, Flutter!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
