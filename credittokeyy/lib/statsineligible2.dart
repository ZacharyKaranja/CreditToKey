import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'suggestions2.dart';

void main() {
  runApp(MaterialApp(
    home: StatsIneligible2(),
  ));
}

class StatsIneligible2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE3E3D4),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Here is what we found:',
                  style: TextStyle(
                    fontSize: 60.0,
                    fontFamily: 'Cormorant SC',
                    color: Color(0xFF005A92),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFC63D3D),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.cancel,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    'ineligible',
                    style: TextStyle(
                      fontSize: 28.0,
                      fontFamily: 'Asap',
                      color: Color(0xFFC63D3D),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Container(
                width: 700,
                height: 700,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20),
                    Text(
                      'Select a graph to view: ',
                      style: TextStyle(
                        fontSize: 28.0,
                        fontFamily: 'Asap',
                        color: Color(0xFF005A92),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 200,
                      child: BarChart(
                        BarChartData(
                          borderData: FlBorderData(show: false),
                          titlesData: FlTitlesData(
                            leftTitles: SideTitles(showTitles: true),
                            bottomTitles: SideTitles(showTitles: true),
                          ),
                          barGroups: [
                            BarChartGroupData(
                              x: 0,
                              barRods: [
                                BarChartRodData(
                                  y: 5,
                                  width: 16,
                                  colors: [Color(0xFF005A92)],
                                ),
                              ],
                            ),
                            // Add more BarChartGroupData for additional bars
                          ],
                        ),
                      ),
                    ),
                    Text(
                      'Credit Score ',
                      style: TextStyle(
                        fontSize: 28.0,
                        fontFamily: 'Asap',
                        color: Color(0xFF005A92),
                      ),
                    ),
                    Text(
                      'LTV (Loan-To-Value) ',
                      style: TextStyle(
                        fontSize: 28.0,
                        fontFamily: 'Asap',
                        color: Color(0xFF3FBC80),
                      ),
                    ),
                    Text(
                      'DTI (Debt To Income) ',
                      style: TextStyle(
                        fontSize: 28.0,
                        fontFamily: 'Asap',
                        color: Color(0xFF005A92),
                      ),
                    ),
                    Text(
                      'FEDTI (Front-end Debt To Income) ',
                      style: TextStyle(
                        fontSize: 28.0,
                        fontFamily: 'Asap',
                        color: Color(0xFF005A92),
                      ),
                    ),
                    Text(
                      ' ',
                      style: TextStyle(
                        fontSize: 28.0,
                        fontFamily: 'Asap',
                        color: Color(0xFF005A92),
                      ),
                    ),
                    Text(
                      'LTV is preferred at <80%. LTV Higher interest rates occur between 80% and 95% and would need a mortgage insurance. ',
                      style: TextStyle(
                        fontSize: 28.0,
                        fontFamily: 'Asap',
                        color: Color(0xFF005A92),
                      ),
                    ),
                    SizedBox(height: 20),
                    Icon(
                      Icons.question_answer,
                      size: 50,
                      color: Color(0xFF005A92),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Suggestions2()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF005A92),
                      ),
                      child: Text('How can I fix it?'),
                    ),
                    // Add more text and widgets as needed
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
