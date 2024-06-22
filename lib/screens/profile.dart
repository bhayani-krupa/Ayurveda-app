// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
//
// class ProfilePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Profile'),
//       ),
//       body: FutureBuilder(
//         future: getUserDetails(),
//         builder: (context, AsyncSnapshot<User?> snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           } else {
//             if (snapshot.hasError) {
//               return Center(
//                 child: Text('Error: ${snapshot.error}'),
//               );
//             } else {
//               User? user = snapshot.data;
//               return Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Username: ${user!.displayName}',
//                       style: TextStyle(fontSize: 18.0),
//                     ),
//                     SizedBox(height: 10.0),
//                     Text(
//                       'Email: ${user.email}',
//                       style: TextStyle(fontSize: 18.0),
//                     ),
//
//                     // Text(
//                     //   'Email: ${user.age}',
//                     //   style: TextStyle(fontSize: 18.0),
//                     // ),
//                     // Add more details as needed
//                   ],
//                 ),
//               );
//             }
//           }
//         },
//       ),
//     );
//   }
//
//   Future<User?> getUserDetails() async {
//     FirebaseAuth auth = FirebaseAuth.instance;
//     return auth.currentUser;
//   }
// }
//

// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
//
// class ProfilePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Profile'),
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [
//               Color(0xFF83C5BE),
//               Color(0xFFE6EAE9), // Light green at the top
//               Color(0xFF83C5BE), // Medium green in the middle
//                // Dark green at the bottom
//             ],
//           ),
//         ),
//         child: Center(
//           child: FutureBuilder(
//             future: getUserDetails(),
//             builder: (context, AsyncSnapshot<User?> snapshot) {
//               if (snapshot.connectionState == ConnectionState.waiting) {
//                 return CircularProgressIndicator();
//               } else {
//                 if (snapshot.hasError) {
//                   return Text('Error: ${snapshot.error}');
//                 } else {
//                   User? user = snapshot.data;
//                   return Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         CircleAvatar(
//                           radius: 50,
//                           backgroundImage: NetworkImage(user!.photoURL ?? ''),
//                         ),
//                         SizedBox(height: 20),
//                         Text(
//                           'Username: ${user.displayName}',
//                           style: TextStyle(fontSize: 18.0),
//                           textAlign: TextAlign.center,
//                         ),
//                         SizedBox(height: 10.0),
//                         Text(
//                           'Email: ${user.email}',
//                           style: TextStyle(fontSize: 18.0),
//                           textAlign: TextAlign.center,
//                         ),
//                       ],
//                     ),
//                   );
//                 }
//               }
//             },
//           ),
//         ),
//       ),
//     );
//   }
//
//   Future<User?> getUserDetails() async {
//     FirebaseAuth auth = FirebaseAuth.instance;
//     return auth.currentUser;
//   }
// }

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF83C5BE), // Light green at the top
              Color(0xFFE6EAE9), // Medium green in the middle
              Color(0xFF83C5BE), // Dark green at the bottom
            ],
          ),
        ),
        child: Center(
          child: FutureBuilder(
            future: getUserDetails(),
            builder: (context, AsyncSnapshot<User?> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else {
                if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  User? user = snapshot.data;
                  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.person,
                            size: 50,
                            color: Color(0xFF83C5BE),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Username: ${user!.displayName}',
                          style: TextStyle(fontSize: 18.0),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Email: ${user.email}',
                          style: TextStyle(fontSize: 18.0),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                }
              }
            },
          ),
        ),
      ),
    );
  }

  Future<User?> getUserDetails() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    return auth.currentUser;
  }
}
