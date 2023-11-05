import 'package:flutter/material.dart';
import 'statsineligible.dart';

void main() {
  runApp(MaterialApp(
    home: StatsEligible(),
  ));
}

class StatsEligible extends StatelessWidget {
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
                    color: Color(0xFF3FBC80),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                ),
                SizedBox(width: 8), // Adjust the spacing between the check icon and "Eligible"
                Text(
                  'eligible',
                  style: TextStyle(
                    fontSize: 28.0,
                    fontFamily: 'Asap',
                    color: Color(0xFF3FBC80),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30), // Add spacing
            Container(
              width: 500, // Adjust the width
              height: 500, // Adjust the height
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Here’s where you can start your home building journey: ',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Asap',
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.house,
                    size: 150,
                    color: Colors.black,
                  ),
                  SizedBox(height: 20), // Add spacing between the house icon and buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          // Handle button 1 click
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFD72424),
                        ),
                        child: Text('realtor.com'),
                      ),
                      SizedBox(width: 16), // Adjust spacing between buttons
                      ElevatedButton(
                        onPressed: () {
                          // Handle button 2 click
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF1144F8),
                        ),
                        child: Text('Zillow'),
                      ),
                      SizedBox(width: 16), // Adjust spacing between buttons
                      ElevatedButton(
                        onPressed: () {
                          // Handle button 3 click
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF1F83E0),
                        ),
                        child: Text('Opendoor'),
                      ),
                      SizedBox(width: 16),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => StatsIneligible()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFC63D3D),
                        ),
                        child: Text('Ineligible'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
