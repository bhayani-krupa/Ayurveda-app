// import 'package:flutter/material.dart';
// import 'package:healthcare/screens/sign_up_screen.dart';
// import 'package:healthcare/widgets/navbar_roots.dart';
// import 'package:healthcare/screens/home_screen.dart';
//
// class Signinscreen extends StatelessWidget {
//   // Define a TextEditingController for the email field
//   final TextEditingController emailController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Sign In'),
//       ),
//       backgroundColor: Color(0xFFE6EAE9),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               'images/ayurveda_wel.jpg',
//               height: 200.0,
//             ),
//             SizedBox(height: 24.0),
//             TextField(
//               controller: emailController,
//               decoration: InputDecoration(
//                 labelText: 'Email',
//               ),
//             ),
//             SizedBox(height: 20.0),
//             TextField(
//               obscureText: true,
//               decoration: InputDecoration(
//                 labelText: 'Password',
//               ),
//             ),
//             SizedBox(height: 20.0),
//         ElevatedButton(
//         onPressed: () {
//           bool isSignInSuccessful = true; // Replace with your sign-in logic
//
//           if (isSignInSuccessful) {
//             String username = 'Jane Sloan'; // Replace with the actual username
//
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => HomePage(username: username),
//               ),
//             );
//           } else {
//             // Show an error or handle unsuccessful sign-in
//           }
//         },
//         // ... other code
//
//
//         style: ElevatedButton.styleFrom(
//                 primary: Color(0xFF4D8A7A),
//                 minimumSize: Size(200.0, 50.0),
//               ),
//               child: Text(
//                 'Sign In',
//                 style: TextStyle(
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:healthcare/screens/home_screen.dart';

class SigninScreen extends StatelessWidget {
  // Define a TextEditingController for the email and password fields
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> _signInWithEmailAndPassword(BuildContext context) async {
    try {
      // Sign in with email and password
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      // Navigate to home screen if sign-in is successful
      String username = userCredential.user!.displayName ?? ''; // Get username if available
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(username: username),
        ),
      );
    } catch (e) {
      // Show an error message or handle the error
      print('Failed to sign in with email and password: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/ayurveda_wel.jpg',
                height: 200.0,
              ),
              SizedBox(height: 24.0),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
              SizedBox(height: 20.0),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () => _signInWithEmailAndPassword(context),
                child: Text('Sign In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
