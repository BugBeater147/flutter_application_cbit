import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter & Image Toggle',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CounterImageToggleScreen(),
    );
  }
}

class CounterImageToggleScreen extends StatefulWidget {
  @override
  _CounterImageToggleScreenState createState() => _CounterImageToggleScreenState();
}

class _CounterImageToggleScreenState extends State<CounterImageToggleScreen> {
  int _counter = 0; // Variable to keep track of the counter value
  bool _isFirstImage = true; // Variable to track the image toggle state

  // Function to toggle between two images
  void _toggleImage() {
    setState(() {
      _isFirstImage = !_isFirstImage;
    });
  }

  // Function to increment the counter value
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter & Image Toggle'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Display the counter value
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '$_counter',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            // Increment button
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text('Increment Counter'),
            ),
            SizedBox(height: 40),

            // Display the image based on toggle state
            Image.asset(
              _isFirstImage ? 'assets/first_image.png' : 'assets/second_image.png',
              height: 200,
            ),
            SizedBox(height: 20),

            // Toggle Image button
            ElevatedButton(
              onPressed: _toggleImage,
              child: Text('Toggle Image'),
            ),
          ],
        ),
      ),
    );
  }
}
