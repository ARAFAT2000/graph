import 'package:flutter/material.dart';
import 'package:graph/stack/stack.dart';

import 'circular_charts/chart_screen.dart';
import 'graph_screen/graph_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: StackPage(),
    );
  }
}
