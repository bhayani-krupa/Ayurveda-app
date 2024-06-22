// home_page.dart
import 'package:healthcare/screens/doctors.dart';
import 'package:healthcare/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:healthcare/screens/user_info.dart'; // We'll create this widget next
import 'package:healthcare/screens/search_bar.dart' as CustomSearchBar;
import 'dart:ui';
import 'package:healthcare/screens/service_section.dart'; // We'll create this widget next
// import 'package:healthcare/screens/youtube_videos.dart'; // We'll create this widget next
import 'package:healthcare/widgets/navbar_roots.dart'; // We'll create this widget next


class HomePage extends StatelessWidget {
  final String username; // Pass the username from the sign-in page

  const HomePage({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ayucare'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF83C5BE),
              Color(0xFFE6EAE9),
              Color(0xFF83C5BE),
            ],
          ),
          image: DecorationImage(
            image: AssetImage('assets/main.png'), // Your background image
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5), // Adjust the opacity as needed
              BlendMode.dstATop,
            ),
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: ListView(
            children: [
              CustomSearchBar.SearchBar(),
              SizedBox(height: 1.0), // Add a small gap between the search bar and services
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: ServicesSection(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}



//
// import 'package:flutter/material.dart';
// import 'package:healthcare/screens/doctors.dart';
// import 'package:healthcare/screens/sign_up_screen.dart';
// import 'package:healthcare/screens/user_info.dart';
// import 'package:healthcare/screens/search_bar.dart' as CustomSearchBar;
// import 'package:healthcare/screens/service_section.dart';
// import 'package:healthcare/widgets/navbar_roots.dart';
//
// class HomePage extends StatelessWidget {
//   final String username;
//
//   const HomePage({Key? key, required this.username}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Ayucare'),
//       ),
//       body: ListView(
//         children: [
//           // UserInfo(username: username),
//           CustomSearchBar.SearchBar(),
//           ServicesSection(),
//         ],
//       ),
//       bottomNavigationBar: CustomBottomNavigationBar(),
//     );
//   }
// }

