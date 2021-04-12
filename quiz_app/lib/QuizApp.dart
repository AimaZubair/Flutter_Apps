import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/questions.dart';

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List<Question> questions = [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
  ];

  int questionIndex = 0;
  String answer = '';
  int correct = 0;
  bool _buttondisable = false;

  void _showalert() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Thank you"),
              content: Text("Total Correct Answer $correct"),
            ));
  }

  void disable() {
    _buttondisable = true;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          height: 600.0,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Question #${questionIndex + 1}',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  questions[questionIndex].question,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  answer,
                  style: TextStyle(
                    color: answer == 'Correct' ? Colors.green : Colors.red,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                  child: GestureDetector(
                child: Container(
                  color: Colors.green,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'True',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  if (questionIndex == 10) {
                    _showalert();
                    disable();
                  }
                  if (questions[questionIndex].answer == true) {
                    setState(() {
                      questionIndex++;
                      answer = 'Correct';
                      correct++;
                    });
                  } else {
                    setState(() {
                      questionIndex++;
                      answer = 'Incorrect';
                    });
                  }
                },
              )),
              Expanded(
                  child: GestureDetector(
                child: Container(
                  color: Colors.redAccent,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'False',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  if (questionIndex == 10) {
                    _showalert();
                    disable();
                  }
                  if (questions[questionIndex].answer == false) {
                    setState(() {
                      questionIndex++;
                      answer = 'Correct';
                      correct++;
                    });
                  } else {
                    setState(() {
                      questionIndex++;
                      answer = 'Incorrect';
                    });
                  }
                },
              )),
            ],
          ),
        ),
      ],
    );
  }
}
