import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'statsineligible4.dart';

void main() {
  runApp(MaterialApp(
    home: Suggestions3(),
  ));
}

class Suggestions3 extends StatelessWidget {
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
                'For DTI (Debt To Income)...',
                style: TextStyle(
                  fontSize: 28.0,
                  fontFamily: 'Asap',
                  color: Colors.black,
                ),
              ),
              // List of suggestions
              buildSuggestion(' Pay down debt you owe'),
              buildSuggestion(' Track down debts as soon as possible'),
              buildSuggestion(' Create a budget'),
              buildSuggestion(' Buy what is necessary and affordable'),
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
                'Having too high of a DTI puts you at risk to save or spend money. You may experience some unexpected expenses you may not have enough to pay for. Lenders will also limit your borrowing options. ',
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
                    MaterialPageRoute(builder: (context) => StatsIneligible4()), // Replace TargetPage with your target page
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
