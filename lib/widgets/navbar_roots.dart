// custom_bottom_navigation_bar.dart

import 'package:flutter/material.dart';
import '../screens/profile.dart';
import '../screens/report.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color(0xFF83C5BE),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 12.0,
      unselectedFontSize: 12.0,
      items: [
        _buildBottomNavBarItem(Icons.home, 'Home'),
        _buildBottomNavBarItem(Icons.assignment, 'Report'),
        _buildBottomNavBarItem(Icons.person, 'Profile'),
      ],
      onTap: (index) => _navigateToPage(index, context),
    );
  }

  BottomNavigationBarItem _buildBottomNavBarItem(IconData icon, String label) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }

  void _navigateToPage(int index, BuildContext context) {
    switch (index) {
      case 0:
      // Navigate to Home page
      // Example: Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => QuizResultPage(answers: {},)),
        );
        break;

      case 2:
      // Navigate to Profile page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProfilePage()),
        );
        break;
    }
  }
}

// import 'package:flutter/material.dart';
// import '../screens/profile.dart';
// import '../screens/report.dart';
//
// class CustomBottomNavigationBar extends StatelessWidget {
//   final Map<String, String?> answers;
//
//   CustomBottomNavigationBar({required this.answers});
//
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       backgroundColor: Color(0xFF83C5BE),
//       selectedItemColor: Colors.white,
//       unselectedItemColor: Colors.white,
//       type: BottomNavigationBarType.fixed,
//       selectedFontSize: 12.0,
//       unselectedFontSize: 12.0,
//       items: [
//         _buildBottomNavBarItem(Icons.home, 'Home'),
//         _buildBottomNavBarItem(Icons.assignment, 'Report'),
//         _buildBottomNavBarItem(Icons.person, 'Profile'),
//       ],
//       onTap: (index) => _navigateToPage(index, context),
//     );
//   }
//
//   BottomNavigationBarItem _buildBottomNavBarItem(IconData icon, String label) {
//     return BottomNavigationBarItem(
//       icon: Icon(icon),
//       label: label,
//     );
//   }
//
//   void _navigateToPage(int index, BuildContext context) {
//     switch (index) {
//       case 0:
//       // Navigate to Home page
//       // Example: Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
//         break;
//       case 1:
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => ReportPage(answers: answers)),
//         );
//         break;
//       case 2:
//       // Navigate to Profile page
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => ProfilePage()),
//         );
//         break;
//     }
//   }
// }
