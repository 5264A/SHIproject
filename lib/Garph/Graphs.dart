import 'package:flutter/cupertino.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';

class Graph extends StatefulWidget {
  const Graph({Key? key}) : super(key: key);

  @override
  State<Graph> createState() => _GraphState();
}

class _GraphState extends State<Graph> {
  List<SalesData>? _chartData;
  TooltipBehavior? _tooltipBehavior;
  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  SfCartesianChart(
      // title: ChartTitle(text: 'Yearly sales analysis'),
      // legend: Legend(isVisible: true),
      tooltipBehavior: _tooltipBehavior,
      series: <ChartSeries>[
        LineSeries<SalesData, double>(
            dataSource: _chartData!,
            xValueMapper: (SalesData sales, _) => sales.year,
            yValueMapper: (SalesData sales, _) => sales.sales,
            dataLabelSettings: const DataLabelSettings(isVisible: true),
            enableTooltip: true),
      ],
      primaryXAxis: NumericAxis(edgeLabelPlacement: EdgeLabelPlacement.shift),
      primaryYAxis: NumericAxis(
          labelFormat: '{value}M',
          numberFormat: NumberFormat.simpleCurrency(decimalDigits: 0)),

    );
  }
}

List<SalesData> getChartData() {
  final List<SalesData> chartData = [
    SalesData(2017, 25),
    SalesData(2018, 10),
    SalesData(2019, 12),
    SalesData(2020, 18),
    SalesData(2021, 30),
    SalesData(2025, 38),
  ];
  return chartData;
}

class SalesData {
  final double year;
  final double sales;
  SalesData(
      this.year,
      this.sales,
      );
}