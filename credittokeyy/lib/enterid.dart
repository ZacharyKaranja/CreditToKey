import 'package:flutter/material.dart';
import 'creditscore.dart'; // Import the file where CheckPage is defined


void main() {
  runApp(MaterialApp(
    home: EnterId(),
  ));
}


class EnterId extends StatelessWidget {
  final TextEditingController _enterNumber = TextEditingController();


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
                'Enter your ID:',
                style: TextStyle(
                  fontSize: 48.0,
                  fontFamily: 'Asap',
                  color: Color(0xFF005A92),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                controller: _enterNumber,
                decoration: InputDecoration(
                  hintText: 'Enter text here',
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      _enterNumber.clear();
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
                  MaterialPageRoute(builder: (context) => CreditScore()),
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
