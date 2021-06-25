import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Aleaddingrafik extends StatefulWidget {
  @override
  _AleaddingrafikState createState() => _AleaddingrafikState();
}

class _AleaddingrafikState extends State<Aleaddingrafik> {
  late List<SalesData> _chartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Yıllık Ziyaret Grafiği'),
          centerTitle: true,
          backgroundColor: Color(0xFF006064),
        ),
        body: SfCartesianChart(
          // title: ChartTitle(text: 'turist sayısı'),
          //legend: Legend(isVisible: true),
          tooltipBehavior: _tooltipBehavior,
          series: <ChartSeries>[
            LineSeries<SalesData, double>(
                name: 'Sales',
                dataSource: _chartData,
                xValueMapper: (SalesData sales, _) => sales.year,
                yValueMapper: (SalesData sales, _) => sales.sales,
                dataLabelSettings: DataLabelSettings(isVisible: true),
                enableTooltip: true),
          ],
          primaryXAxis: NumericAxis(
            edgeLabelPlacement: EdgeLabelPlacement.shift,
          ),
          primaryYAxis: NumericAxis(
            edgeLabelPlacement: EdgeLabelPlacement.shift,
            labelFormat: '{value}Bin',
          ),
        ),
      ),
    );
  }

  List<SalesData> getChartData() {
    final List<SalesData> chartData = [
      SalesData(2017, 22),
      SalesData(2018, 18),
      SalesData(2019, 23),
      SalesData(2020, 16),
      SalesData(2021, 15)
    ];
    return chartData;
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final double year;
  final double sales;
}
