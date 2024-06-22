import 'package:flutter/material.dart';
import 'package:healthcare/screens/doctors.dart';
import 'package:healthcare/screens/chat_screen.dart';
import 'package:healthcare/screens/quiz_page.dart';
import 'package:healthcare/screens/article.dart';

import 'for_you.dart';
import 'herbal_pants.dart';

class ServicesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0), // Add vertical padding
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        padding: EdgeInsets.all(16.0),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          _buildServiceContainer(
            'Dosha Quiz',
            Color(0xFF6BA286),
            Color(0xFF7FC47F),
            Icons.assignment_turned_in,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizPage()),
              );
            },
          ),
          _buildServiceContainer(
            'Newsletter',
            Color(0xFF6BA286),
            Color(0xFF7FC47F),
            Icons.assignment_turned_in,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ArticlesPage()),
              );
            },
          ),
          _buildServiceContainer(
            'Doctors',
            Color(0xFF6BA286),
            Color(0xFF64B98C),
            Icons.medical_services,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DoctorsPage()),
              );
            },
          ),
          _buildServiceContainer(
            'Medication',
            Color(0xFF6BA286),
            Color(0xFF487753),
            Icons.medication,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HerbalMedicinesSection()),
              );
            },
          ),
          _buildServiceContainer(
            'Chat',
            Color(0xFF6BA286),
            Color(0xFF64B98C),
            Icons.message,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatScreen(name: '')),
              );
            },
          ),
          _buildServiceContainer(
            'For You',
            Color(0xFF6BA286),
            Color(0xFF64B98C),
            Icons.star,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  ForYouPage()),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildServiceContainer(
      String title,
      Color color,
      Color hoverColor,
      IconData icon, {
        VoidCallback? onTap,
      }) {
    return Container(
      width: 120, // Adjust the width as needed
      height: 120, // Adjust the height as needed
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 5.0,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          hoverColor: hoverColor,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 40.0,
                  color: Colors.white,
                ),
                SizedBox(height: 6.0),
                Container( // Wrap the text in a container
                  width: double.infinity, // Adjust width to expand to full width
                  padding: EdgeInsets.symmetric(horizontal: 5.0), // Adjust padding
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                    textAlign: TextAlign.center, // Center align the text
                    overflow: TextOverflow.ellipsis, // Add ellipsis for long titles
                    maxLines: 2, // Limit to 2 lines
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
