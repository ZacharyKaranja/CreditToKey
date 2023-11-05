import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'statsineligible3.dart';

void main() {
  runApp(MaterialApp(
    home: Suggestions2(),
  ));
}

class Suggestions2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE3E3D4),
      body: SingleChildScrollView( // Wrap with SingleChildScrollView for scrolling content
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Suggestions: ',
                  style: TextStyle(
                    fontSize: 60.0,
                    fontFamily: 'Cormorant SC',
                    color: Color(0xFF005A92),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'For LTV (Loan-To-Value)...',
                style: TextStyle(
                  fontSize: 28.0,
                  fontFamily: 'Asap',
                  color: Colors.black,
                ),
              ),
              // List of suggestions
              buildSuggestion(' Make larger down payments'),
              buildSuggestion(' For more information, visit: ConsumerFinance.gov'),
              SizedBox(height: 20),
              Text(
                'Why does this matter?',
                style: TextStyle(
                  fontSize: 28.0,
                  fontFamily: 'Asap',
                  color: Colors.black,
                ),
              ),
              Text(
                'Though you still have a chance at qualifying for the home you’re looking for, a mortgage insurance, which will add more cost to the house, may need to be purchased. It is called the Private Mortgage Interest (PMI). This insurance stays until LTV is dropped below 80%. LTV higher interest rates occur between 80% and 95% and would need a mortgage insurance. ',
                style: TextStyle(
                  fontSize: 28.0,
                  fontFamily: 'Asap',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Navigate to another page (replace SuggestionsPage() with your target page)
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StatsIneligible3()), // Replace TargetPage with your target page
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF005A92),
                ),
                child: Text('Back to Graphs'),
              ),
              // Add more text and widgets as needed
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSuggestion(String text) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.check,
          color: Color(0xFF3FBC80),
          size: 28,
        ),
        SizedBox(width: 8),
        Text(
          text,
          style: TextStyle(
            fontSize: 28.0,
            fontFamily: 'Asap',
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
