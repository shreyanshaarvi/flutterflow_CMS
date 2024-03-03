// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class ChartWidget extends StatefulWidget {
  const ChartWidget({
    super.key,
    this.width,
    this.height,
    required this.month,
    required this.revenue,
  });

  final double? width;
  final double? height;
  final List<String> month;
  final List<double> revenue;

  @override
  State<ChartWidget> createState() => _ChartWidgetState();
}

class _ChartWidgetState extends State<ChartWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
