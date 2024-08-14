import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Greeting App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Greeting App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Hello, World! Text with custom styling
              Text(
                'Hello, World!',
                style: TextStyle(
                  color: Colors.red, // Custom color
                  fontWeight: FontWeight.bold, // Bold text
                  fontSize: 24, // Font size
                ),
              ),
              SizedBox(height: 10), // Spacing between texts
              // Additional Text
              Text(
                'Welcome to Flutter!',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20), // Spacing before image
              // Image widget (optional)
              Image.network(
                'https://storage.googleapis.com/cms-storage-bucket/c823e53b3a1a7b0d36a9.png',
                width: 200,
                height: 100,
              ),
              SizedBox(height: 20), // Spacing before button
              // Interactive Button
              ElevatedButton(
                onPressed: () {
                  // Show Snackbar when button is pressed
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Button Pressed!')),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Custom button color
                ),
                child: Text('Press Me', style: TextStyle(
                  color: Colors.white,
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
