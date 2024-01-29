import 'package:flutter/material.dart';
import 'input_page.dart';

void main(){
  runApp(const BMIC());
}

class BMIC extends StatelessWidget {
  const BMIC({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
         scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}


