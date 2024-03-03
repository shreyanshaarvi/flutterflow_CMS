// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:syncfusion_flutter_charts/charts.dart';

class LineChart extends StatefulWidget {
  const LineChart({
    Key? key,
    this.width,
    this.height,
    required this.month,
    required this.revenue,
  }) : super(key: key);

  final double? width;
  final double? height;
  final List<String> month;
  final List<double> revenue;

  @override
  State<LineChart> createState() => _LineChartState();
}

class _LineChartState extends State<LineChart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        series: <LineSeries<_ChartData, String>>[
          LineSeries<_ChartData, String>(
            dataSource: _getChartData(),
            xValueMapper: (_ChartData sales, _) => sales.month,
            yValueMapper: (_ChartData sales, _) => sales.revenue,
          ),
        ],
      ),
    );
  }

  List<_ChartData> _getChartData() {
    final List<_ChartData> chartData = [];
    for (int i = 0; i < widget.month.length; i++) {
      chartData.add(_ChartData(widget.month[i], widget.revenue[i]));
    }
    return chartData;
  }
}

class _ChartData {
  _ChartData(this.month, this.revenue);

  final String month;
  final double revenue;
}
