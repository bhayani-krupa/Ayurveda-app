import 'package:flutter/material.dart';

class HerbalMedicinesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Herbal Medicines'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF9AE0B5),
              Color(0xFF4D8A7A), // Background color 1
              Color(0xFF9AE0B5), // Background color 2
            ],
          ),
        ),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Adjust the number of columns as needed
          ),
          itemCount: herbalMedicines.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MedicineContentPage(
                      content: herbalMedicines[index].content,
                    ),
                  ),
                );
              },
              child: _buildMedicineCard(herbalMedicines[index]),
            );
          },
        ),
      ),
    );
  }

  Widget _buildMedicineCard(HerbalMedicine medicine) {
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFFFFFFF), // Gradient color 1
            Color(0xFFD0F0C0), // Gradient color 2
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            medicine.imagePath,
            height: 100.0,
            width: 100.0,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10.0),
          Text(
            medicine.name,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.black, // Text color
            ),
            textAlign: TextAlign.center,
          ),
          //SizedBox(height: 5.0),
          Text(
            medicine.uses,
            style: TextStyle(
              fontSize: 13.5,
              color: Colors.black87, // Text color
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class HerbalMedicine {
  final String name;
  final String uses;
  final String imagePath;
  final String content;

  HerbalMedicine({
    required this.name,
    required this.uses,
    required this.imagePath,
    required this.content,
  });
}

class MedicineContentPage extends StatelessWidget {
  final String content;

  MedicineContentPage({required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medicine Content'),
      ),
      backgroundColor: Colors.green[100], // Set background color of the Scaffold
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: Text(
              content,
              style: TextStyle(fontSize: 22.0),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

// Sample data for herbal medicines
List<HerbalMedicine> herbalMedicines = [
  HerbalMedicine(
    name: 'Ashwagandha',
    uses: 'Improves stress',
    imagePath: 'images/ashwagandha.webp',
    content: '''
      Sanskrit Name : Ashwagandha
      Guna1 (Properties) : laghu
      Guna2 (Properties) : snigdha
      Rasa1 (taste) : tikta
      Rasa2 (taste) : kashaya
      Vipaka (Final transformation) : madhura (sweet)
      Virya (Potency) : ushna (heating nature)
      Dosha : Vata Kapha shamaka- decreases Vata and Kapha
    ''',
  ),
  HerbalMedicine(
    name: 'Bhringraj',
    uses: 'Digestive benefits, gas',
    imagePath: 'images/Bhringraj.webp',
    content: '''
      Sanskrit Name : Bhringaraja

      Guna1 (Properties) : laghu

      Guna2 (Properties) : ruksha

      Rasa1 (taste) : katu

      Rasa2 (taste) : tikta

      Vipaka (Final transformation) : katu (pungent- hot taste)

      Virya (Potency) : ushna (heating nature)

     Dosha : Vata Kapha shamaka- decreases Vata and Kapha

'''
  ),
  HerbalMedicine(
      name: 'Amalaki',
      uses: 'Digestive benefits, gas',
      imagePath: 'images/amla.jpeg',
      content: '''
      Sanskrit Name : Amalaki

Guna1 (Properties) : ruksha 

Guna2 (Properties) : laghu

Rasa1 (taste) : amla

Rasa2 (taste) : kashaya

Vipaka (Final transformation) : madhura (sweet)

Virya (Potency) : sheet (cooling nature)

Dosha : Tridosha shamaka- decreases Vata, Pitta and Kapha


'''
  ),
  HerbalMedicine(
      name: 'Babbula',
      uses: 'Digestive benefits, gas',
      imagePath: 'images/babool.jpeg',
      content: '''
      Sanskrit Name : Amalaki

Sanskrit Name : Babbula

Guna1 (Properties) : guru

Guna2 (Properties) : ruksha

Rasa1 (taste) : kashaya

Rasa2 (taste) : -

Vipaka (Final transformation) : katu (pungent- hot taste)

Virya (Potency) : ushna (heating nature)

Dosha : Kapha shamaka- decreases Kapha



'''
  ),
  HerbalMedicine(
      name: 'Eranda',
      uses: 'Digestive benefits, gas',
      imagePath: 'images/eranda.png',
      content: '''
      Sanskrit Name : Eranda

Sanskrit Name : Eranda

Guna1 (Properties) : tikshna

Guna2 (Properties) : guru

Rasa1 (taste) : madhura

Rasa2 (taste) : katu

Vipaka (Final transformation) : madhura (sweet)

Virya (Potency) : ushna (heating nature)

Dosha : Tridosha shamaka- decreases Vata, Pitta and Kapha



'''
  ),
  HerbalMedicine(
      name: 'Eranda',
      uses: 'Digestive benefits, gas',
      imagePath: 'images/ashoka.png',
      content: '''
      Sanskrit Name : Ashoka


Sanskrit Name : Ashoka

Guna1 (Properties) : laghu

Guna2 (Properties) : ruksha

Rasa1 (taste) : kashaya

Rasa2 (taste) : tikta

Vipaka (Final transformation) : katu (pungent- hot taste)

Virya (Potency) : sheet (cooling nature)

Dosha : Pitta Kapha shamaka- decreases Pitta and Kapha




'''
  ),

  // Add more medicines as needed
];

// void main() {
//   runApp(MaterialApp(
//     home: HerbalMedicinesSection(),
//   ));

