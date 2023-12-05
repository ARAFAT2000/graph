import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';
import 'package:flutter/material.dart';

import 'graph_data/graphdata.dart';

class GraphScreen extends StatefulWidget {
  const GraphScreen({super.key});

  @override
  State<GraphScreen> createState() => _GraphScreenState();
}

class _GraphScreenState extends State<GraphScreen> {
  final List<Feature> features = [
    Feature(
      title: "Flutter",
      color: Colors.blue,
      data: [0.3, 0.6, 0.8, 0.9, 1, 1.2],
    ),
    Feature(
      title: "Kotlin",
      color: Colors.black,
      data: [1, 0.8, 0.6, 0.7, 0.3, 0.1],
    ),
    Feature(
      title: "Java",
      color: Colors.orange,
      data: [0.4, 0.2, 0.9, 0.5, 0.6, 0.4],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(child: Text('Graph_ Screen')),
      ),
      body: Column(

        children: [
          SizedBox(
            height: 15,
          ),
          Center(child: Text('Task Management',style: AppTextStyle(),)),

          LineGraph(
              features: features,
              size: Size(450, 420),
          labelX: ['Day 1', 'Day 2', 'Day 3', 'Day 4', 'Day 5', 'Day 6'],
            labelY: ['5%', '10%', '15%', '20%', '25%', '30%'],
            showDescription: true,
            graphColor: Colors.purple,
          ),
        ],
      ),
    );
  }
}
