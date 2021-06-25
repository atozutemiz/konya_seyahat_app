import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Mevlanagrafik extends StatefulWidget {
  @override
  _MevlanagrafikState createState() => _MevlanagrafikState();
}

class _MevlanagrafikState extends State<Mevlanagrafik> {
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
            labelFormat: '{value}milyon',
          ),
        ),
      ),
    );
  }

  List<SalesData> getChartData() {
    final List<SalesData> chartData = [
      SalesData(2017, 29),
      SalesData(2018, 28),
      SalesData(2019, 25),
      SalesData(2020, 17),
      SalesData(2021, 16)
    ];
    return chartData;
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final double year;
  final double sales;
}
