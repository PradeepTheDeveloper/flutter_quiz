import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    int resultText;
    if (resultScore <= 8) {
      resultText = resultScore;
    } else if (resultScore <= 12) {
      resultText = resultScore;
    } else if (resultScore <= 16) {
      resultText = resultScore;
    } else {
      resultText = resultScore;
    }
    return resultText.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase + '/30',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            child: Text(
              'Restart Quiz!',
            ),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
