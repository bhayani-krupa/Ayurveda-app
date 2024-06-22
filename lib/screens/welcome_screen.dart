import 'package:flutter/material.dart';
import 'package:healthcare/screens/home_screen.dart';
import 'package:healthcare/screens/signin_screen.dart';
import 'package:healthcare/screens/sign_up_screen.dart';
import 'package:healthcare/widgets/navbar_roots.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      backgroundColor: Color(0xFFE6EAE9), // Subtle background color related to Ayurveda
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/ayurveda_wel.jpg', // Placeholder image (replace with your own)
              height: 300.0,
            ),
            SizedBox(height: 20.0),
            Text(
              'Welcome to Your Ayurveda App!', // Adjusted text related to Ayurveda
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF296056), // Text color related to Ayurveda
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF4D8A7A), // Subtle color matching the background
                minimumSize: Size(200.0, 50.0), // Adjusted width and height
              ),
              child: Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.white, // Text color for "Sign Up"
                ),
              ),
            ),
            SizedBox(height: 10.0), // Added spacing between buttons
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SigninScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF4D8A7A), // Subtle color matching the background
                minimumSize: Size(200.0, 50.0), // Adjusted width and height
              ),
              child: Text(
                'Sign In',
                style: TextStyle(
                  color: Colors.white, // Text color for "Sign In"
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

