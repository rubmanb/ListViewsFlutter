import 'package:flutter/material.dart';
import 'package:fl_components/screens/listview_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material app',
      home: ListViewScreen(),
    );
  }
}
