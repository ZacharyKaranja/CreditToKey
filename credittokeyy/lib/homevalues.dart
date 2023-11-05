import 'package:flutter/material.dart';
import 'statseligible.dart';

void main() {
  runApp(MaterialApp(
    home: HomeValues(),
  ));
}

class HomeValues extends StatelessWidget {
  final TextEditingController homeAppraised = TextEditingController();
  final TextEditingController downPayment = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE3E3D4),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Enter the home appraised value:',
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Asap',
                  color: Color(0xFF005A92),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                controller: homeAppraised,
                decoration: InputDecoration(
                  hintText: 'Enter text here',
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      homeAppraised.clear();
                    },
                    icon: const Icon(Icons.clear),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Enter your down payment amount:',
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Asap',
                  color: Color(0xFF005A92),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                controller: downPayment,
                decoration: InputDecoration(
                  hintText: 'Enter text here',
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      downPayment.clear();
                    },
                    icon: const Icon(Icons.clear),
                  ),
                ),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StatsEligible()),
                );
              },
              icon: Icon(Icons.bar_chart),
              label: Text('Show me Stats', style: TextStyle(fontSize: 20)),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF005A92)),
                minimumSize: MaterialStateProperty.all(Size(200, 60)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
