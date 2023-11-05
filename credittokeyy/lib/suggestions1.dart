import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'statsineligible2.dart';

void main() {
  runApp(MaterialApp(
    home: Suggestions1(),
  ));
}

class Suggestions1 extends StatelessWidget {
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
                'To raise your CREDIT SCORE...',
                style: TextStyle(
                  fontSize: 28.0,
                  fontFamily: 'Asap',
                  color: Colors.black,
                ),
              ),
              // List of suggestions
              buildSuggestion(' Pay off any current debt'),
              buildSuggestion(' Make payments on time going forward'),
              buildSuggestion(' Track credit reports frequently'),
              buildSuggestion(' Request a higher credit limit on your card'),
              buildSuggestion(' Set due date alerts for bill payments'),
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
                'Good credit scores have easier approvals and gain more trust from banks and businesses.',
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
                    MaterialPageRoute(builder: (context) => StatsIneligible2()), // Replace TargetPage with your target page
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
