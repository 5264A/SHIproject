import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';

import 'Graphmodel.dart';

class MyBarGraph extends StatelessWidget {
  MyBarGraph({super.key, required this.weeklysummary});
  List<double> weeklysummary;

  @override
  Widget build(BuildContext context) {
    BarData myBarData = BarData(
        sunAmount: weeklysummary[0],
        monAmount: weeklysummary[1],
        tueAmount: weeklysummary[2],
        wedAmount: weeklysummary[3],
        thuAmount: weeklysummary[4],
        friAmount: weeklysummary[5],
        satAmount: weeklysummary[6]);
    myBarData.initializeBarData();
    return BarChart(
      BarChartData(
        maxY: 120,
        minY: 0,
        gridData: FlGridData(show: false),
        borderData: FlBorderData(show: false),
        barGroups: myBarData.barData
            .map((e) => BarChartGroupData(
          x: e.x,
          barRods: [
            BarChartRodData(
                toY: e.y,
                color: Color(0xffC46200),
                width: 25,
                borderRadius: BorderRadius.circular(4),
                backDrawRodData: BackgroundBarChartRodData(
                    show: true,
                    toY: 120,
                  color:Color(0xffEADDCA),),),
          ],
        ))
            .toList(),
      ),
    );
  }
}