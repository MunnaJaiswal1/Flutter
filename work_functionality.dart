import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  return runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: Center(
                child: Text("Dice Game"),
            ),
            backgroundColor: Colors.brown,
          ),
          body: DicePage(),
        ),
      ),
  );
}


class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDice=1;
  var rightDice=1;
  @override
  Widget build(BuildContext context){

    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: ()
                {
                  setState(() {
                    leftDice=Random().nextInt(6)+1;
                    print("leftdiceNumber=$leftDice");
                  });

                },
                child: Image.asset("images/dice-$leftDice.png"),

              ),
            ),
          ),
          Expanded(
            child:Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: (){
                  setState(() {
                    rightDice=Random().nextInt(6)+1;
                    print("rightDiceNumber=$rightDice");
                  });
                },
                child: Image.asset("images/dice-$rightDice.png"),

              ),
            ),
          ),
        ],
      ),
    );
  }
}
