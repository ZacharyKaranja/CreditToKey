import 'package:flutter/material.dart';
import 'enterid.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CreditToKey App',
      theme: ThemeData(
        brightness: Brightness.light,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 80.0, // Set the font size to 80
            fontFamily: 'CormorantSC', // Set the font to Cormorant SC
            color: Color(0xFF005A92), // Set the text color to #005A92
          ),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialAppBody();
  }
}

class MaterialAppBody extends StatefulWidget {
  @override
  _MaterialAppBodyState createState() => _MaterialAppBodyState();
}

class _MaterialAppBodyState extends State<MaterialAppBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE3E3D4), // Set the background color to E3E3D4
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage('assets/images/ctklogo.png'),
              width: 300,
              height: 100,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Welcome to CreditToKey!',
                style: TextStyle(
                  fontSize: 75.0, // Set the font size to 80
                  fontFamily: 'CormorantSC', // Set the font to Cormorant SC
                  color: Color(0xFF005A92), // Set the text color to #005A92
                ),
              ),
            ),
            SizedBox(height: 16), // Add spacing
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EnterId()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color(0xFF005A92), // Set the button color to #005A92
                ),
                minimumSize: MaterialStateProperty.all(Size(200, 60)), // Set the button size
              ),
              child: Text('Lets Check!', style: TextStyle(fontSize: 20)), // Set the button text size
            ),
          ],
        ),
      ),
    );
  }
}
