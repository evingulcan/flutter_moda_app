import 'package:flutter/material.dart';

import 'moda/feature/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Moda',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
