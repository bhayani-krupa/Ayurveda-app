// // import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// // import 'package:healthcare/screens/signin_screen.dart';
//
// class SignupPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Sign Up'),
//       ),
//       backgroundColor: Color(0xFFE6EAE9), // Subtle background color related to Ayurveda
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Image.asset(
//             //   'images/ayurveda_wel.jpg', // Placeholder image for signup page
//             //   height: 100.0,
//             // ),
//             SizedBox(height: 20.0),
//             TextField(
//               decoration: InputDecoration(
//                 labelText: 'Username',
//               ),
//             ),
//             SizedBox(height: 20.0),
//             TextField(
//               decoration: InputDecoration(
//                 labelText: 'Age',
//               ),
//               keyboardType: TextInputType.number,
//               inputFormatters: <TextInputFormatter>[
//                 FilteringTextInputFormatter.digitsOnly,
//               ],
//             ),
//             SizedBox(height: 20.0),
//             TextField(
//               decoration: InputDecoration(
//                 labelText: 'Gender',
//               ),
//             ),
//             SizedBox(height: 20.0),
//             TextField(
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
//             ElevatedButton(
//               onPressed: () {
//                 // Add signup logic here
//               },
//               style: ElevatedButton.styleFrom(
//                 primary: Color(0xFF4D8A7A), // Subtle color matching the background
//                 minimumSize: Size(200.0, 50.0), // Adjusted width and height
//               ),
//               child: Text(
//                 'Sign Up',
//                 style: TextStyle(
//                   color: Colors.white, // Text color for "Sign Up"
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
//
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:healthcare/screens/home_screen.dart';
//
// class SignupPage extends StatelessWidget {
//   // Define TextEditingController for each input field
//   final TextEditingController usernameController = TextEditingController();
//   final TextEditingController ageController = TextEditingController();
//   final TextEditingController genderController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   void dispose(){
//     usernameController.clear();
//     ageController.clear();
//     genderController.clear();
//     emailController.clear();
//     passwordController.clear();  }
//
//   Future<void> _signUpWithEmailAndPassword(BuildContext context, String email, String password) async {
//     try {
//       // Create user with email and password
//       UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//
//       // Update user's display name (username)
//       await userCredential.user!.updateDisplayName(email);
//
//       // Navigate to home screen if sign-up is successful
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => HomePage(username: email),
//         ),
//       );
//
//       // Clear input fields after successful sign-up
//
//
//       // Show success message
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text('Account successfully created!'),
//         ),
//       );
//     } catch (e) {
//       // Show an error message or handle the error
//       print('Failed to create account: $e');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Sign Up'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: usernameController,
//               decoration: InputDecoration(
//                 labelText: 'Username',
//               ),
//             ),
//             SizedBox(height: 20.0),
//             TextField(
//               controller: ageController,
//               decoration: InputDecoration(
//                 labelText: 'Age',
//               ),
//               keyboardType: TextInputType.number,
//             ),
//             SizedBox(height: 20.0),
//             TextField(
//               controller: genderController,
//               decoration: InputDecoration(
//                 labelText: 'Gender',
//               ),
//             ),
//             SizedBox(height: 20.0),
//             TextField(
//               controller: emailController,
//               decoration: InputDecoration(
//                 labelText: 'Email',
//               ),
//             ),
//             SizedBox(height: 20.0),
//             TextField(
//               controller: passwordController,
//               obscureText: true,
//               decoration: InputDecoration(
//                 labelText: 'Password',
//               ),
//             ),
//             SizedBox(height: 20.0),
//             ElevatedButton(
//               onPressed: () => _signUpWithEmailAndPassword(context),
//               child: Text('Sign Up'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:healthcare/screens/home_screen.dart';

class SignupPage extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>(); // Define GlobalKey<FormState>

  // Define TextEditingController for each input field
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> _signUpWithEmailAndPassword(BuildContext context) async {
    try {
      if (formKey.currentState!.validate()) {
        // Save form data
        formKey.currentState!.save();

        // Create user with email and password
        UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );

        // Update user's display name (username)
        await userCredential.user!.updateDisplayName(usernameController.text);

        // Navigate to home screen if sign-up is successful
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(username: usernameController.text),
          ),
        );

        // Clear input fields after successful sign-up
        usernameController.clear();
        ageController.clear();
        genderController.clear();
        emailController.clear();
        passwordController.clear();

        // Show success message
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Account successfully created!'),
          ),
        );
      }
    } catch (e) {
      // Show an error message or handle the error
      print('Failed to create account: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: formKey, // Assign the GlobalKey<FormState>
          child: SingleChildScrollView (
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    labelText: 'Username',
                  ),
                  onSaved: (value) => usernameController.text = value!,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your username';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  controller: ageController,
                  decoration: InputDecoration(
                    labelText: 'Age',
                  ),
                  keyboardType: TextInputType.number,
                  onSaved: (value) => ageController.text = value!,
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  controller: genderController,
                  decoration: InputDecoration(
                    labelText: 'Gender',
                  ),
                  onSaved: (value) => genderController.text = value!,
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                  ),
                  onSaved: (value) => emailController.text = value!,
                  validator: (value) {
                    if (value!.isEmpty || !value.contains('@')) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                  ),
                  onSaved: (value) => passwordController.text = value!,
                  validator: (value) {
                    if (value!.isEmpty || value.length < 6) {
                      return 'Password must be at least 6 characters long';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () => _signUpWithEmailAndPassword(context),
                  child: Text('Sign Up'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
