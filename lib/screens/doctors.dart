import 'dart:ui';
import 'package:flutter/material.dart';

class Doctor {
  final String name;
  final String image;
  // final String email;

  Doctor({required this.name, required this.image, });
}

class DoctorsPage extends StatelessWidget {
  final List<Doctor> doctors = [
    Doctor(name: 'Dr. John Doe', image: 'images/doctor1.jpg'),
    Doctor(name: 'Dr. Jane Smith', image: 'images/doctor2.jpg'),
    Doctor(name: 'Dr. Jane Smith', image: 'images/doctor3.jpg'),
    Doctor(name: 'Dr. Jane Smith', image: 'images/doctor4.jpg'),
    Doctor(name: 'Dr. Jane Smith', image: 'images/doctor1.jpg'),
    Doctor(name: 'Dr. Jane Smith', image: 'images/doctor2.jpg'),
    // Add more doctors as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctors'),
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
            image: AssetImage('assets/doctor_background.jpg'), // Replace with your image
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: ListView(
            padding: EdgeInsets.all(16.0),
            children: [
              Text(
                'Our Doctors',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 20.0),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                ),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: doctors.length,
                itemBuilder: (context, index) {
                  return DoctorCard(doctor: doctors[index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DoctorCard extends StatelessWidget {
  final Doctor doctor;

  DoctorCard({required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF6BA286),
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 5.0,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Column(
          children: [
            Image.asset(
              doctor.image,
              height: 140.0,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    doctor.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 2.0),
                  // Text(
                  //   doctor.email,
                  //   style: TextStyle(
                  //     color: Colors.white,
                  //     fontSize: 14.0,
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: DoctorsPage(),
    ),
  );
}
