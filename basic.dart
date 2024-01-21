/* input and output string
import "dart:io";

void main(){
 print("hello dear");
 stdout.write("enter your name");
 var name = stdin.readLineSync();
 print("welcome, $name");
}


 creating a class and their object
class Human{
 Human(); //default constructor
}
void main(){
 new Human(); //creating a class object
 Human(); //same as above
}



datatypes in dart:
1.integer --int
2.double --double
3.big integer --BigInt
4.string  --String
5.boolean --bool
6.list or hashmap (collections of variables.)



void main(){
  //declaration of variable
  int a=5;
  print(a);

}


 for loop with ifelse statements

void main() {
  var i;
  for( i = 1 ; i <= 10; i++ ) {
    if(i%2==0)
    {
      print("$i is a even number");
    }
    else{
      print("$i is odd number");
    }
  }
}

function

// using function
void add(int a,int b) {
  int c;
  c=a+b;
  print(c);
}
void main() {
  add(3,4);
}

//using class
class myClass{
  myClass();  //default constructor

void name(){
  print("hello dear its a class!!!");
}

}

void main(){
  var obj=myClass();
  obj.name();
}

//list in dart
void main(){
  var list1=[10,20,30,40,50];
  list1.add(60);
  print("$list1");
  print(list1[0]);
  var list=[];
  list.addAll(list1);
  print(list);
}
 */
/*
open left top corner navigation bar
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Left Side Slide Bar'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Toggle the drawer open/close state
            setState(() {
              isDrawerOpen = !isDrawerOpen;
            });
          },
        ),
      ),
      drawer: Drawer(
        child: SlideTransition(
          position: Tween<Offset>(
            begin: Offset(-1.0, 0.0),
            end: Offset(0.0, 0.0),
          ).animate(CurvedAnimation(
            parent: ModalRoute.of(context).animation!,
            curve: Curves.easeInOut,
          )),
          child: DrawerContent(),
        ),
      ),
      body: Center(
        child: Text('Main Content'),
      ),
    );
  }
}

class DrawerContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text(
            'Navigation Header',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        ListTile(
          title: Text('Item 1'),
          onTap: () {
            // Handle item 1 tap
            Navigator.pop(context); // Close the drawer
          },
        ),
        ListTile(
          title: Text('Item 2'),
          onTap: () {
            // Handle item 2 tap
            Navigator.pop(context); // Close the drawer
          },
        ),
        // Add more ListTile widgets for additional items
      ],
    );
  }
}
*/