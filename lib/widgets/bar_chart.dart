import 'package:blanjaloka_flutter/models/chart.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class BarChart extends StatelessWidget {
  const BarChart({Key? key}) : super(key: key);

  static List<charts.Series<BarModel, String>> _createSampleData() {
    final data = [
      BarModel("8", 100000),
      BarModel("9", 20000),
      BarModel("10", 75000),
      BarModel("11", 69000),
      BarModel("12", 110000),
      BarModel("13", 50000),
      BarModel("14", 40000),
    ];
    return [
      charts.Series<BarModel, String>(
        data: data,
        id: 'sales',
        colorFn: (_, __) => charts.MaterialPalette.teal.shadeDefault,
        domainFn: (BarModel barModeel, _) => barModeel.year,
        measureFn: (BarModel barModeel, _) => barModeel.value,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: charts.BarChart(
          _createSampleData(),
          animate: true,
        ),
      ),
    );
  }
}
