import 'package:flutter/material.dart';

class Question {
  final String question;
  final List<Option> options;

  Question({required this.question, required this.options});
}

class Option {
  final String text;
  final String dosha;

  Option({required this.text, required this.dosha});
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentQuestionIndex = 0;
  List<Question> questions = [
    Question(
      question: "What is your frame like?",
      options: [
        Option(text: 'Tall\nMale: 183cm and above\nFemale: 173cm and above', dosha: 'Vata'),
        Option(text: 'Medium\nMale: 170cm to 182cm\nFemale: 163cm to 172cm', dosha: 'Pitta'),
        Option(text: 'Stocky\nMale: 169cm and below\nFemale: 162cm and below', dosha: 'Kapha'),
      ],
    ),


    Question(
      question: "Which option describes your weight?",
      options: [
        Option(text: 'Hard to gain', dosha: 'Vata'),
        Option(text: 'Constant', dosha: 'Pitta'),
        Option(text: 'Gain easily', dosha: 'Kapha'),
      ],
    ),
    Question(
      question: "What is your skin like?",
      options: [
        Option(text: 'Thin, dry and rough', dosha: 'Vata'),
        Option(text: 'Flushes easily, soft and oily', dosha: 'Pitta'),
        Option(text: 'Thick, moist and smooth', dosha: 'Kapha'),
      ],
    ),
    Question(
      question: "Describe your skin temperature",
      options: [
        Option(text: 'Cold hands/feet', dosha: 'Vata'),
        Option(text: 'Warm', dosha: 'Pitta'),
        Option(text: 'Cool', dosha: 'Kapha'),
      ],
    ),
    Question(
      question: "What is your complexion like?",
      options: [
        Option(text: 'Dull', dosha: 'Vata'),
        Option(text: 'Moles and freckles', dosha: 'Pitta'),
        Option(text: 'Much subcutaneous fat', dosha: 'Kapha'),
      ],
    ),
    // Question(
    //   question: "How would you describe your hair amount?",
    //   options: [
    //     Option(text: 'Average', dosha: 'Vata'),
    //     Option(text: 'Thin', dosha: 'Pitta'),
    //     Option(text: 'Thick', dosha: 'Kapha'),
    //   ],
    // ),
    Question(
      question: "What is your hair type?",
      options: [
        Option(text: 'Dry, curly', dosha: 'Vata'),
        Option(text: 'Medium', dosha: 'Pitta'),
        Option(text: 'Oily', dosha: 'Kapha'),
      ],
    ),
    Question(
      question: "Which option describes the shape of your face?",
      options: [
        Option(text: 'Thin, small', dosha: 'Vata'),
        Option(text: 'Moderate, angular features', dosha: 'Pitta'),
        Option(text: 'Large, soft contours', dosha: 'Kapha'),
      ],
    ),
    // Question(
    //   question: "Which option best describes your lips?",
    //   options: [
    //     Option(text: 'Thin, dry', dosha: 'Vata'),
    //     Option(text: 'Medium, soft', dosha: 'Pitta'),
    //     Option(text: 'Large, smooth', dosha: 'Kapha'),
    //   ],
    // ),
    Question(
      question: "Which option best describes your eyes?",
      options: [
        Option(text: 'Small', dosha: 'Vata'),
        Option(text: 'Medium', dosha: 'Pitta'),
        Option(text: 'Large', dosha: 'Kapha'),
      ],
    ),
    // Question(
    //   question: "Describe your nails",
    //   options: [
    //     Option(text: 'Small, break easily, fissured, cracked', dosha: 'Vata'),
    //     Option(text: 'Medium, soft, pink', dosha: 'Pitta'),
    //     Option(text: 'Large, thick, firm, smooth', dosha: 'Kapha'),
    //   ],
    // ),
    Question(
      question: "What is your appetite like?",
      options: [
        Option(text: 'Must eat when hungry', dosha: 'Vata'),
        Option(
            text: 'Able to digest almost anything but loses temper if food is not available',
            dosha: 'Pitta'),
        Option(text: 'Can skip meal easily', dosha: 'Kapha'),
      ],
    ),
    // Question(
    //   question: "How much do you sweat?",
    //   options: [
    //     Option(text: 'Scanty', dosha: 'Vata'),
    //     Option(text: 'Profuse', dosha: 'Pitta'),
    //     Option(text: 'Moderate', dosha: 'Kapha'),
    //   ],
    // ),
    // Question(
    //   question: "What is your body odor like?",
    //   options: [
    //     Option(text: 'No smell', dosha: 'Vata'),
    //     Option(text: 'Strong smell', dosha: 'Pitta'),
    //     Option(text: 'Pleasant smell', dosha: 'Kapha'),
    //   ],
    // ),
    Question(
      question: "Food and drinks preference",
      options: [
        Option(text: 'Prefer warm', dosha: 'Vata'),
        Option(text: 'Prefer cold', dosha: 'Pitta'),
        Option(text: 'Prefer dry and warm', dosha: 'Kapha'),
      ],
    ),
    // Question(
    //   question: "Reaction to stress",
    //   options: [
    //     Option(text: 'Excite quickly', dosha: 'Vata'),
    //     Option(text: 'Moderate response time', dosha: 'Pitta'),
    //     Option(text: 'Slow to get excited', dosha: 'Kapha'),
    //   ],
    // ),
    Question(
      question: "Climatic Sensitivity",
      options: [
        Option(text: 'Aversion to dry, cold (Likes warm)', dosha: 'Vata'),
        Option(text: 'Aversion to heat (Likes cold)', dosha: 'Pitta'),
        Option(text: 'Aversion to damp, cool (Likes wind and sun)',
            dosha: 'Kapha'),
      ],
    ),
    // Question(
    //   question: "What is your mood like?",
    //   options: [
    //     Option(text: 'Changes quickly', dosha: 'Vata'),
    //     Option(text: 'Changes slowly', dosha: 'Pitta'),
    //     Option(text: 'Steady, unchanging', dosha: 'Kapha'),
    //   ],
    // ),
    Question(
      question: "What is your resistance to diseases like?",
      options: [
        Option(text: 'Susceptible to diseases', dosha: 'Vata'),
        Option(text: 'Moderate immunity', dosha: 'Pitta'),
        Option(text: 'Strong immunity', dosha: 'Kapha'),
      ],
    ),
    // Question(
    //   question: "What is your muscle tone like?",
    //   options: [
    //     Option(text: 'Lean with low body fat', dosha: 'Vata'),
    //     Option(text: 'Medium with good muscle tone', dosha: 'Pitta'),
    //     Option(text: 'Bulky with higher fat percentage', dosha: 'Kapha'),
    //   ],
    // ),
    // Question(
    //   question: "What option best describes your voice?",
    //   options: [
    //     Option(text: 'High pitch', dosha: 'Vata'),
    //     Option(text: 'Medium pitch', dosha: 'Pitta'),
    //     Option(text: 'Low pitch', dosha: 'Kapha'),
    //   ],
    // ),
    // Question(
    //   question: "What is your sleep pattern like?",
    //   options: [
    //     Option(text: 'Light, interrupted', dosha: 'Vata'),
    //     Option(text: 'Sound, medium length', dosha: 'Pitta'),
    //     Option(text: 'Heavy, long', dosha: 'Kapha'),
    //   ],
    // ),
    // Add more questions here...
  ];
  Map<String, String?> answers = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              questions[currentQuestionIndex].question,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            Column(
              children: _buildOptions(),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                _submitAnswer();
              },
              child: Text(currentQuestionIndex == questions.length - 1
                  ? 'Submit'
                  : 'Next'),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildOptions() {
    List<Widget> widgets = [];
    for (int i = 0; i < questions[currentQuestionIndex].options.length; i++) {
      widgets.add(
        RadioListTile(
          title: Text(questions[currentQuestionIndex].options[i].text),
          value: questions[currentQuestionIndex].options[i].dosha,
          groupValue: answers[questions[currentQuestionIndex].question],
          onChanged: (value) {
            setState(() {
              answers[questions[currentQuestionIndex].question] =
              value as String?;
            });
          },
        ),
      );
    }
    return widgets;
  }

  void _submitAnswer() {
    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    } else {
      // All questions answered, determine doshas
      String vata = 'Vata';
      String pitta = 'Pitta';
      String kapha = 'Kapha';
      int vataCount = 0;
      int pittaCount = 0;
      int kaphaCount = 0;

      answers.values.forEach((value) {
        if (value == vata) {
          vataCount++;
        } else if (value == pitta) {
          pittaCount++;
        } else if (value == kapha) {
          kaphaCount++;
        }
      });

      // Calculate dosha percentages
      int totalQuestions = questions.length;
      double vataPercentage = (vataCount / totalQuestions) * 100;
      double pittaPercentage = (pittaCount / totalQuestions) * 100;
      double kaphaPercentage = (kaphaCount / totalQuestions) * 100;

      // Display predominant doshas in an AlertDialog
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Predominant Doshas'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Vata: ${vataPercentage.toStringAsFixed(2)}%'),
                Text('Pitta: ${pittaPercentage.toStringAsFixed(2)}%'),
                Text('Kapha: ${kaphaPercentage.toStringAsFixed(2)}%'),
                SizedBox(height: 10),
                Text('Your predominant dosha(s):'),
                if (vataPercentage > 32) Text(
                    ' - $vata (${vataPercentage.toStringAsFixed(2)}%)'),
                if (pittaPercentage > 32) Text(
                    ' - $pitta (${pittaPercentage.toStringAsFixed(2)}%)'),
                if (kaphaPercentage > 32) Text(
                    ' - $kapha (${kaphaPercentage.toStringAsFixed(2)}%)'),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  // Reset quiz if needed
                  setState(() {
                    currentQuestionIndex = 0;
                    answers.clear();
                  });
                },
                child: Text('Close'),
              ),
            ],
          );
        },
      );
    }
  }
}

  void main() {
  runApp(
    MaterialApp(
      home: QuizPage(),
    ),
  );
}

