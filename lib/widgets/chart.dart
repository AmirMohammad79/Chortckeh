import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
class Chart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List< PieChartSectionData> list = [
      PieChartSectionData(value: 40.0 ,
      color: Colors.red,),
      PieChartSectionData(value: 60.0 ,
      color: Colors.green,),
    ];
    return  Scaffold(
      body: PieChart(
        PieChartData(
          sections: list
        ),
        swapAnimationDuration: Duration(milliseconds: 150), // Optional
        swapAnimationCurve: Curves.linear, // Optional
      ),
    );
  }
}
