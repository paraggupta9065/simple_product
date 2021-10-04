import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:simple_product_app/view/product_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blueGrey[700],
      ),
      title: "Simple Product App",
      home: ProductList(),
    );
  }
}
