// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_field, prefer_final_fields

import 'package:animate_do/animate_do.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class StockPage extends StatefulWidget {
  StockPage({Key? key}) : super(key: key);

  @override
  State<StockPage> createState() => _StockPageState();
}

class _StockPageState extends State<StockPage> {
  List<Color> gradientColors = [
    const Color(0xffe68823),
    const Color(0xffe68823),
  ];

  // crate list of spots for the graph by monthly, yearly of Google Stocks
  List<FlSpot> _daylySpots = [
    FlSpot(0, 20.0),
    FlSpot(1, 20.0),
    FlSpot(2, 30.0),
    FlSpot(3, 10.0),
    FlSpot(4, 40.0),
    FlSpot(5, 60.0),
    FlSpot(6, 40.0),
    FlSpot(7, 80.0),
    FlSpot(8, 60.0),
    FlSpot(9, 70.0),
    FlSpot(10, 50.0),
    FlSpot(11, 150.0),
    FlSpot(12, 70.0),
    FlSpot(13, 80.0),
    FlSpot(14, 60.0),
    FlSpot(15, 70.0),
    FlSpot(16, 60.0),
    FlSpot(17, 80.0),
    FlSpot(18, 110.0),
    FlSpot(19, 130.0),
    FlSpot(20, 100.0),
    FlSpot(21, 130.0),
    FlSpot(22, 160.0),
    FlSpot(23, 190.0),
    FlSpot(24, 150.0),
    FlSpot(25, 170.0),
    FlSpot(26, 180.0),
    FlSpot(27, 140.0),
    FlSpot(28, 150.0),
    FlSpot(29, 150.0),
    FlSpot(30, 130.0)
  ];

  List<FlSpot> _monthlySpots = [
    FlSpot(0, 110.0),
    FlSpot(1, 110.0),
    FlSpot(2, 130.0),
    FlSpot(3, 100.0),
    FlSpot(4, 130.0),
    FlSpot(5, 160.0),
    FlSpot(6, 190.0),
    FlSpot(7, 150.0),
    FlSpot(8, 170.0),
    FlSpot(9, 180.0),
    FlSpot(10, 140.0),
    FlSpot(11, 150.0),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0e1117),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Stock',
          style: TextStyle(
            color: Colors.blueGrey,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.blueGrey,
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.blueGrey,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeInUp(
              duration: Duration(milliseconds: 1000),
              from: 30,
              child: Text(
                "\$ 4, 777.12",
                style: TextStyle(
                  color: Colors.blueGrey.shade100,
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            FadeInUp(
              duration: Duration(milliseconds: 1000),
              from: 30,
              child: Text(
                "+1.5%",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 100.0),
            FadeInUp(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                child: LineChart(
                  mainData(),
                ),
              ),
            ),
            AnimatedContainer(
                duration: Duration(milliseconds: 500),
                height: MediaQuery.of(context).size.height * 0.3,
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentIndex = 0;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 15.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: _currentIndex == 0
                              ? Color(0xff161b22)
                              : Color(0xff161b22).withOpacity(0.0),
                        ),
                        child: Text(
                          "D",
                          style: TextStyle(
                              color: _currentIndex == 0
                                  ? Colors.blueGrey.shade200
                                  : Colors.blueGrey,
                              fontSize: 20),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentIndex = 1;
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 500),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 15.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: _currentIndex == 1
                              ? Color(0xff161b22)
                              : Color(0xff161b22).withOpacity(0.0),
                        ),
                        child: Text(
                          "M",
                          style: TextStyle(
                              color: _currentIndex == 1
                                  ? Colors.blueGrey.shade200
                                  : Colors.blueGrey,
                              fontSize: 20),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentIndex = 2;
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 500),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 15.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: _currentIndex == 2
                              ? Color(0xff161b22)
                              : Color(0xff161b22).withOpacity(0.0),
                        ),
                        child: Text(
                          "Y",
                          style: TextStyle(
                              color: _currentIndex == 2
                                  ? Colors.blueGrey.shade200
                                  : Colors.blueGrey,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: false,
        drawVerticalLine: true,
        horizontalInterval: 1,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: false,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
          ),
        ),
      ),
      borderData: FlBorderData(
          show: false,
          border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      maxX: _currentIndex == 0
          ? _daylySpots.length - 1.toDouble()
          : _currentIndex == 1
              ? _monthlySpots.length - 1.toDouble()
              : _currentIndex == 2
                  ? _daylySpots.length - 20.toDouble()
                  : _daylySpots.length.toDouble(),
      minY: 0,
      maxY: 200,
      lineBarsData: [
        LineChartBarData(
          spots: _currentIndex == 0
              ? _daylySpots
              : _currentIndex == 1
                  ? _monthlySpots
                  : _daylySpots,
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          barWidth: 2,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: [
                const Color(0xffe68823).withOpacity(0.1),
                const Color(0xffe68823).withOpacity(0),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
      ],
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff68737d),
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );
    Widget text;
    switch (value.toInt()) {
      case 2:
        text = const Text('MAR', style: style);
        break;
      case 5:
        text = const Text('JUN', style: style);
        break;
      case 8:
        text = const Text('SEP', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }

    return Padding(child: text, padding: const EdgeInsets.only(top: 8.0));
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff67727d),
      fontWeight: FontWeight.bold,
      fontSize: 15,
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = '10K';
        break;
      case 3:
        text = '30k';
        break;
      case 5:
        text = '50k';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }
}
