import 'package:blanjaloka_flutter/constant.dart';
import 'package:blanjaloka_flutter/models/chart.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartWidget extends StatelessWidget {
  const BarChartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        titlesData: FlTitlesData(
            show: true,
            rightTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            topTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: true),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            )),
        borderData: FlBorderData(show: false),
        gridData: FlGridData(show: true, drawVerticalLine: false),
        alignment: BarChartAlignment.center,
        maxY: 20,
        minY: 0,
        groupsSpace: 12,
        barTouchData: BarTouchData(enabled: true),
        barGroups: BarData.barData
            .map((data) => BarChartGroupData(
                  x: data.id,
                  barRods: [
                    BarChartRodData(
                      color: bPrimaryColor,
                      toY: data.y,
                      width: 35,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6),
                        topRight: Radius.circular(6),
                      ),
                    )
                  ],
                ))
            .toList(),
      ),
    );
  }
}
