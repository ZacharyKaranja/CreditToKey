import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'suggestions1.dart';

void main() {
  runApp(MaterialApp(
    home: StatsIneligible(),
  ));
}

class StatsIneligible extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE3E3D4),
      body: Center(
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
                SizedBox(width: 8), // Adjust the spacing between the check icon and "Ineligible"
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
            SizedBox(height: 30), // Add spacing
            Container(
              width: 700, // Adjust the width
              height: 700, // Adjust the height
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20), // Add spacing between the house icon and text

                  Text(
                    'Select a graph to view: ',
                    style: TextStyle(
                      fontSize: 28.0,
                      fontFamily: 'Asap',
                      color: Color(0xFF005A92),
                    ),
                  ),
                  SizedBox(height: 10), // Add spacing
                  // Display the bar graph using FlChart
                  Container(
                    height: 200, // Adjust the height of the graph
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
                                y: 5, // Adjust the bar height
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
                      color: Color(0xFF3FBC80),
                    ),
                  ),
                  Text(
                    'LTV (Loan-To-Value) ',
                    style: TextStyle(
                      fontSize: 28.0,
                      fontFamily: 'Asap',
                      color: Color(0xFF005A92),
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
                    'Credit scores must be 640 or above. ',
                    style: TextStyle(
                      fontSize: 28.0,
                      fontFamily: 'Asap',
                      color: Color(0xFF005A92),
                    ),
                  ),
                  SizedBox(width: 16),
                  Icon(
                    Icons.question_mark_rounded,
                    size: 50,
                    color: Colors.white,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Suggestions1()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF005A92),
                    ),
                    child: Text('How can I fix it?'),
                  ),
                  // Add more text and graphs as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
