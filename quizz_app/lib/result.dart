import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int testScore;
  final Function() resetTest;

  const Result(this.testScore, this.resetTest);

  String get resultPhrase {
    String resultText;
    if (testScore <= 20) {
      resultText = 'Good Job';
    } else if (testScore <= 40) {
      resultText = 'Great Job';
    } else {
      resultText = 'AMAZING!!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          TextButton(onPressed: resetTest, child: Text('Try Again'))
        ],
      ),
    );
  }
}
