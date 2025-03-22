import 'package:dataterrain_task/ui/HomeScreen/dasboardwidgets/pointer_widget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../constants/colors.dart';
import '../header_widget.dart';
import '../../../../constants/texts.dart';

class Card2{
  static   Widget card2Content() {
    return Container(
      decoration: BoxDecoration(
        color: cardbgcolor,
        borderRadius: BorderRadius.zero,
        boxShadow: [
          BoxShadow(
            color: shadowcolor ,
              spreadRadius: 0.1,
            blurRadius: 0.1,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderWidget.header(lblprogramstatusmetrics,
              Icons.arrow_drop_down_sharp, lblmonth, false),
          const SizedBox(height: 12),
          SizedBox(
            height: 380,
            child: barChart(),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PointerWidget.pointerdata(lblallprograms, allprogramsbarcolor),
              const SizedBox(width: 24),
               PointerWidget.pointerdata(lblactive, activebarcolor),
              const SizedBox(width: 24),
               PointerWidget.pointerdata(lblcompleted, completedbarcolor),
            ],
          ),
        ],
      ),
    );
  }

}


Widget barChart() {
    final List<double> yValues = [0, 5, 15, 25, 50];
    return BarChart(
      BarChartData(
        alignment: BarChartAlignment.spaceAround,
        titlesData: FlTitlesData(
          show: true,
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                String text;
                switch (value.toInt()) {
                  case 0:
                    text = lbljan;
                    break;
                  case 1:
                    text = lblfeb;
                    break;
                  case 2:
                    text = lblmar;
                    break;
                  default:
                    text = '';
                }
                return Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    text,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                );
              },
              reservedSize: 30,
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 30,
              interval: null,
              getTitlesWidget: (value, meta) {
                if (yValues.contains(value)) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      value.toInt().toString(),
                      style: TextStyle(
                        color: textcolor,
                        fontSize: 12,
                      ),
                    ),
                  );
                }
                return const SizedBox();
              },
            ),
          ),
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        gridData: FlGridData(
          show: true,
          checkToShowHorizontalLine: (value) => yValues.contains(value),
          getDrawingHorizontalLine: (value) {
            return FlLine(
              color: shadowcolor,
              strokeWidth: 1,
            );
          },
          drawVerticalLine: false,
        ),
        barTouchData: BarTouchData(enabled: false),
        borderData: FlBorderData(
            show: true,
            border: Border(
                left: BorderSide(color: shadowcolor),
                bottom: BorderSide(color: shadowcolor))),
        barGroups: [
          BarChartGroupData(
            x: 0,
            barRods: [
              BarChartRodData(
                toY: 9,
                color: completedbarcolor,
                width: 12,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(3),
                  topRight: Radius.circular(3),
                ),
              ),
              BarChartRodData(
                toY: 6,
                color: activebarcolor,
                width: 12,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(3),
                  topRight: Radius.circular(3),
                ),
              ),
              BarChartRodData(
                toY: 36,
                color: allprogramsbarcolor,
                width: 12,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(3),
                  topRight: Radius.circular(3),
                ),
              ),
            ],
          ),
          BarChartGroupData(
            x: 1,
            barRods: [
              BarChartRodData(
                toY: 36,
                color: completedbarcolor,
                width: 12,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(3),
                  topRight: Radius.circular(3),
                ),
              ),
              BarChartRodData(
                toY: 48,
                color: activebarcolor,
                width: 12,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(3),
                  topRight: Radius.circular(3),
                ),
              ),
              BarChartRodData(
                toY: 48,
                color: allprogramsbarcolor,
                width: 12,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(3),
                  topRight: Radius.circular(3),
                ),
              ),
            ],
          ),
          BarChartGroupData(
            x: 2,
            barRods: [
              BarChartRodData(
                toY: 54,
                color: completedbarcolor,
                width: 12,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(3),
                  topRight: Radius.circular(3),
                ),
              ),
              BarChartRodData(
                toY: 30,
                color: activebarcolor,
                width: 12,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(3),
                  topRight: Radius.circular(3),
                ),
              ),
              BarChartRodData(
                toY: 53,
                color: allprogramsbarcolor,
                width: 12,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(3),
                  topRight: Radius.circular(3),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
