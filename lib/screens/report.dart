import 'package:flutter/material.dart';

class QuizResultPage extends StatelessWidget {
  final Map<String, String?> answers;

  QuizResultPage({required this.answers});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Result'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Quiz Result:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Predominant Doshas:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            _buildDoshaText(),
            SizedBox(height: 20),
            Text(
              'Your Answers:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            _buildAnswerText(),
          ],
        ),
      ),
    );
  }

  Widget _buildDoshaText() {
    // Calculate dosha percentages
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

    int totalQuestions = answers.length;
    double vataPercentage = (vataCount / totalQuestions) * 100;
    double pittaPercentage = (pittaCount / totalQuestions) * 100;
    double kaphaPercentage = (kaphaCount / totalQuestions) * 100;

    String doshaText = '';
    if (vataPercentage > 32) doshaText += '$vata (${vataPercentage.toStringAsFixed(2)}%), ';
    if (pittaPercentage > 32) doshaText += '$pitta (${pittaPercentage.toStringAsFixed(2)}%), ';
    if (kaphaPercentage > 32) doshaText += '$kapha (${kaphaPercentage.toStringAsFixed(2)}%)';

    return Text(doshaText);
  }

  Widget _buildAnswerText() {
    String answersText = '';
    answers.forEach((question, answer) {
      answersText += '$question: $answer\n';
    });
    return Text(answersText);
  }
}

// import 'package:flutter/material.dart';
//
// class ResultPage extends StatelessWidget {
//   final double vataPercentage;
//   final double pittaPercentage;
//   final double kaphaPercentage;
//
//   ResultPage({
//     required this.vataPercentage,
//     required this.pittaPercentage,
//     required this.kaphaPercentage,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Quiz Result'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               'Dosha Percentages:',
//               style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 10.0),
//             Text(
//               'Vata: ${vataPercentage.toStringAsFixed(2)}%',
//               style: TextStyle(fontSize: 16.0),
//             ),
//             Text(
//               'Pitta: ${pittaPercentage.toStringAsFixed(2)}%',
//               style: TextStyle(fontSize: 16.0),
//             ),
//             Text(
//               'Kapha: ${kaphaPercentage.toStringAsFixed(2)}%',
//               style: TextStyle(fontSize: 16.0),
//             ),
//             SizedBox(height: 20.0),
//             Text(
//               'Your predominant dosha(s):',
//               style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
//             ),
//             if (vataPercentage > 32)
//               Text(
//                 ' - Vata (${vataPercentage.toStringAsFixed(2)}%)',
//                 style: TextStyle(fontSize: 16.0),
//               ),
//             if (pittaPercentage > 32)
//               Text(
//                 ' - Pitta (${pittaPercentage.toStringAsFixed(2)}%)',
//                 style: TextStyle(fontSize: 16.0),
//               ),
//             if (kaphaPercentage > 32)
//               Text(
//                 ' - Kapha (${kaphaPercentage.toStringAsFixed(2)}%)',
//                 style: TextStyle(fontSize: 16.0),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }
