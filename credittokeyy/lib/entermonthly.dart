import 'package:flutter/material.dart';
import 'homevalues.dart';// Import the file where CheckPage is defined


void main() {
  runApp(MaterialApp(
    home: EnterMonthly(),
  ));
}


class EnterMonthly extends StatelessWidget {
  final TextEditingController monthlyCar = TextEditingController();
  final TextEditingController studentLoan = TextEditingController();
  final TextEditingController monthlyMortgage = TextEditingController();
  final TextEditingController monthlyIncome = TextEditingController();
  final TextEditingController creditCard = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE3E3D4),


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft, // Align the text to the left
              child: Text(
                'Enter your monthly car payment: ',
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
                controller: monthlyCar,
                decoration: InputDecoration(
                  hintText: 'Enter text here',
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      monthlyCar.clear();
                    },
                    icon: const Icon(Icons.clear),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft, // Align the text to the left
              child: Text(
                'Enter your student loan payment: ',
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
                controller: studentLoan,
                decoration: InputDecoration(
                  hintText: 'Enter text here',
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      studentLoan.clear();
                    },
                    icon: const Icon(Icons.clear),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft, // Align the text to the left
              child: Text(
                'Enter your estimated monthly mortgage: ',
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
                controller: monthlyMortgage,
                decoration: InputDecoration(
                  hintText: 'Enter text here',
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      monthlyMortgage.clear();
                    },
                    icon: const Icon(Icons.clear),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft, // Align the text to the left
              child: Text(
                'Enter your gross monthly income: ',
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
                controller: monthlyIncome,
                decoration: InputDecoration(
                  hintText: 'Enter text here',
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      monthlyIncome.clear();
                    },
                    icon: const Icon(Icons.clear),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft, // Align the text to the left
              child: Text(
                'Enter your monthly credit card payment: ',
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
                controller: creditCard,
                decoration: InputDecoration(
                  hintText: 'Enter text here',
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      creditCard.clear();
                    },
                    icon: const Icon(Icons.clear),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeValues()),
                );
              }, style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF005A92)), // Set the button color
              minimumSize: MaterialStateProperty.all(Size(200, 60)), // Set the button size
            ),
              child: Text('Next', style: TextStyle(fontSize: 20)), // Set the button text siz
            ),
          ],
        ),
      ),
    );
  }
}
