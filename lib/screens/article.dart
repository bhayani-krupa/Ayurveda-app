import 'package:flutter/material.dart';

class Article {
  final String title;
  final String content;

  Article({required this.title, required this.content});
}

// List of articles
List<Article> articles = [
  Article(
    title: 'How to Use Fresh Giloy Stem',
    content: '''
      Giloy has several therapeutic benefits. Primary, it acts immunomodulator and beneficial in chronic diseases. For this reason, many people use Giloy Stem in the treatment of chronic and intermittent fever. Some people have access to fresh giloy stem and want to know how to use fresh giloy stem for medicinal purposes.
      
      CHARACTERISTICS OF GOOD GILOY STEM
      Giloy stem with the width of at least a little finger without any damage is considered good for use in medicine.
      
      LENGTH OF GILOY STEM
      How long giloy stem should I take?
      If you are making a remedy for an adult patient, 6 inches long stem is good.
      
      HOW TO USE GILOY STEM?
      Take 6 inches long giloy stem.
      Cut stem into small pieces.
      Crush pieces to make a paste.
      Take 160 ml of water in a tea pan.
      Put crushed giloy stem into the tea pan with water.
      Boil the water with a giloy stem.
      Simmer the mixture until 1/4th water remains.
      Filter the giloy water and let it naturally cool down.
      Drink it when it is still warm.
      If you want to get more potent results with fresh giloy stem, then you can also use freshly extracted giloy juice.
      Take giloy stem. Crush to make its paste in a stone mortar using a stone pestle.
      Squeeze the paste and extract the juice.
      The dosage of fresh giloy juice is 5 ml, which can be taken 2 or 3 times a day.
      
      WHAT IS THE BEST TIME TO DRINK GILOY JUICE OR DECOCTION?
      The best time is 30 minutes before morning meal or breakfast and evening meal or dinner. If you require to take it 3 times, then you can take it 30 minutes before lunch in the afternoon. If you don’t take lunch, then you can take it without meal consideration in between morning and evening doses.
    ''',
  ),

  // Add more articles as needed
];

class ArticlesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Articles'),
      ),
      body: Container(
        color: Colors.green[100], // Set background color here
        child: ListView(
          children: articles.map((article) {
            return Card(
              child: ListTile(
                title: Text(article.title),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ArticleDetailPage(article: article),
                    ),
                  );
                },
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class ArticleDetailPage extends StatelessWidget {
  final Article article;

  const ArticleDetailPage({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Container(
            color: Colors.green[50], // Set background color here
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _buildContentWidgets(article.content),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildContentWidgets(String content) {
    List<Widget> widgets = [];

    content.split('\n').forEach((line) {
      if (line.trim().toUpperCase() == line.trim()) { // Check if the line is all caps
        widgets.add(
          Text(
            line,
            style: TextStyle(
              fontWeight: FontWeight.bold, // Make text bold
              fontSize: 18.0,
            ),
          ),
        );
      } else {
        widgets.add(
          Text(
            line,
            style: TextStyle(fontSize: 18.0),
          ),
        );
      }
    });

    return widgets;
  }
}

void main() {
  runApp(MaterialApp(
    home: ArticlesPage(),
  ));
}
