import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Ui List Product',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: routes,
    );
  }
}
