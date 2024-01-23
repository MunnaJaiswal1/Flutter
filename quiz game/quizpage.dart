import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quiz_brain.dart';
QuizBrain quizBrain=QuizBrain();
void main(){
  runApp(QuizGame());
}

class QuizGame extends StatelessWidget {
  const QuizGame({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text("Quiz Game",
                style:TextStyle(
                 fontSize: 35.0,
                 fontWeight: FontWeight.w400,
                ),
              ),
          ),
          backgroundColor: Colors.brown.shade400,
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 13.0,horizontal: 35.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}
class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper=[];

  void checkAnswer(bool userPickedAnswer){
    bool correctAnswer=
    quizBrain.getCorrectAnswer();
    setState(() {
    if(userPickedAnswer==correctAnswer){
      scoreKeeper.add(Icon(Icons.check,color: Colors.green ,));
    }else{
      scoreKeeper.add(Icon(Icons.close,color: Colors.red ,));
    }

      quizBrain.nextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 6,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  quizBrain.getQuestionText(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.black,
                  ),
                ),
              ),
            )
        ),
        Expanded(
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green, //set background color
                  textStyle: TextStyle(color: Colors.white) // set the tet colors.

                ),
                child: Text(
                  'True',
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 20.0,
                 ),
                ),
                onPressed: (){
                  checkAnswer(true);
                },
              ),
            ),
        ),
        Expanded(
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, //set background color
                    textStyle: TextStyle(color: Colors.white) // set the tet colors.
                ),
                child: Text(
                  'False',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white
                  ),
                ),
                onPressed: (){
                  checkAnswer(false);
                },
              ),
            )
        ),
        //score keeper
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}