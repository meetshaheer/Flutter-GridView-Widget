import 'package:flutter/material.dart';
import 'package:gridview/grid.dart';
import 'package:gridview/gridview.dart';
import 'package:gridview/gridviewonly.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: gridviewonly(),
    );
  }
}
