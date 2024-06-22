import 'package:flutter/material.dart';

class ForYouPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('For You'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 16.0), // Add space above the first box
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListContentPage(
                        title: 'List 1',
                        content: '''The predominance of Vata Dosha in body constitution refers to Vata Body Type. People with Vata Body type have dry skin, dry hair, less hair, slim body. Nails and eyes in them appear dry. Their voice is weak and incoherent. They have cold hands and feet or whole body. Their joints have cracking sounds while movement. They are generally weak and never stick to one thing. So, they easily quit jobs or work. They have an irregular appetite. They get tired easily. They can become upset and emotionally disturbed quickly. They have less sleep and awake several times while sleeping. They have a wavering conscience, lack of conscience, less control over mind, and less tolerance capacity. They never forgive anyone, they are aggressive, sometimes, destructive and violent. They might also have quarrelsome nature, so they have a few friends. They have a quick grasping power, but a poor memory.
                        ''',
                      ),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green[200], // List 1 background color
                    borderRadius: BorderRadius.circular(16.0), // Rounded corners
                  ),
                  child: Center(
                    child: Text(
                      'Vata Body Type',
                      style: TextStyle(fontSize: 24.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 16.0), // Add space between the first and second box
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListContentPage(
                        title: 'Pita Body Type',
                        content: '''The predominance of Pitta Dosha in body constitution refers to Pitta Body Type. People with Pitta body type have higher metabolic rate and feel appetite after a few hours. They have more thirst and very good appetite. Their body is delicate, medium build, and has medium physical strength. Their look is penetrating and voice is clear and high pitched. Their skin has a white complexion with reddish or yellowish tinge. Skin is soft, thin, and warm. They can easily have wrinkles, moles, and skin eruptions. Nails are pinkish. They have excessive perspiration and foul smell of sweat may also be present.
                        People with Pitta body type are intelligent, have fair memory and moderate knowledge, and have moderate control over the mind. They are aggressive for aggressive people but consoling for weak people. They have a few friends. These people are difficult to conquer in the debate. They are very logical and good in reasoning. They get excited and become angry quickly. They are courageous and adventurous in nature.
                        ''',
                      ),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green[200], // List 2 background color
                    borderRadius: BorderRadius.circular(16.0), // Rounded corners
                  ),
                  child: Center(
                    child: Text(
                      'Pita Body Type',
                      style: TextStyle(fontSize: 24.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 16.0), // Add space between the second and third box
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListContentPage(
                        title: 'Kapha Body Type',
                        content: '''The predominance of Kapha Dosha in body constitution refers to Kapha Body Type. People with Kapha body type have a good physique, great physical strength, well-built, pleasant and loving personality, deep and pleasant voice, fair color, big eyes with the unctuous and white sclera.
                        They have good control over mind, good tolerance, forgiving nature, and very religious. They are non-aggressive, calm, and like peace. They take a long time to grasp but have very good memory. They have good intelligence and have steady thoughts and determination.
                        ''',
                      ),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green[200], // List 3 background color
                    borderRadius: BorderRadius.circular(16.0), // Rounded corners
                  ),
                  child: Center(
                    child: Text(
                      'Kapha Body Type ',
                      style: TextStyle(fontSize: 24.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 16.0), // Add space below the third box
        ],
      ),
    );
  }
}

class ListContentPage extends StatelessWidget {
  final String title;
  final String content;

  const ListContentPage({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Container(
          color: Colors.grey[200], // Background color for content
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              content,
              style: TextStyle(fontSize: 18.0), // Increased font size
            ),
          ),
        ),
      ),
    );
  }
}
