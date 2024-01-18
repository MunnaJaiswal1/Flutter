// import 'dart:html';

import 'package:flutter/material.dart';
// import 'package:mysecondapp/practice.dart';
//import './images';
/*
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white24,
        appBar: AppBar(
          title:Text("this is a title section"),
          centerTitle: true,
          backgroundColor: Colors.purpleAccent,

        ),
        body:Center(
          child:Image(
              image: NetworkImage("https://static.vecteezy.com/system/resources/thumbnails/025/284/015/small_2x/close-up-growing-beautiful-forest-in-glass-ball-and-flying-butterflies-in-nature-outdoors-spring-season-concept-generative-ai-photo.jpg"),
          ),
        ),
       ),
      ),
    );
}

void main()
{
 runApp(
   MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.white10,
    appBar: AppBar(
      title: Center(child: Text("Nature Picture")),
      backgroundColor: Colors.white,
      //style:TextStyle(color:Colors.amberAccent),
    ),
    body: Center(
      child:Image(image:NetworkImage("https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg?size=626&ext=jpg&ga=GA1.1.1412446893.1705104000&semt=sph"),
      ),
      ),
    ),
 ),
 );
}
*/

//
// void main(){
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   //const ({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//       backgroundColor: Colors.teal,
//         body: SafeArea(
//          child: Column(
//            crossAxisAlignment: CrossAxisAlignment.stretch,
//            children:[
//              SizedBox(height: 180.0),
//             CircleAvatar(
//               radius: 70.0,
//               backgroundColor: Colors.white,
//              // backgroundImage:  ,
//             ),
//              //title: Center(child: Text("Flutter Developer")),
//              Text(
//                  "Flutter Developer",
//                style: TextStyle(
//                  fontSize: 30.0,
//                  color: Colors.white,
//                  fontWeight: FontWeight.bold,
//                ),
//
//              ),
//              SizedBox(height: 90.0),
//              Container(
//                  width:100.0,
//                height:60.0,
//                color: Colors.white,
//                child: Text("Container 2"),
//              ),
//              SizedBox(height: 30.0),
//              Container(
//                height:60.0,
//                width:100.0,
//                color: Colors.white,
//                child: Text("Container 3"),
//              ),
//            ],
//          )
//        ),
//       ),
//     );
//   }
// }

//login page
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Center(child: Text("AppBar")),
          backgroundColor: Colors.brown,
        ),
        body: SafeArea(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20.0),
                CircleAvatar(
                  radius: 60.0,
                  backgroundImage: AssetImage("images/munna.jpg"),
                ),
                Text(
                  "Munna Jaiswal",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                Text(
                    "FLUTTER DEVELOPER",
                   style: TextStyle(
                     fontSize: 20.0,
                     color: Colors.white,
                     fontWeight: FontWeight.w700,
                     letterSpacing: 0.8,
                   ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 240,
                  child: Divider(
                    color: Colors.teal.shade300,
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 5.0,horizontal: 50.0),
                  child: Padding(
                    padding: EdgeInsets.all(1),
                    child: ListTile(
                      leading: Icon(
                        Icons.mail,
                        color: Colors.teal.shade500,
                        size: 25,
                      ),
                      title: Text(
                          "mohan1235@gmail.com"
                      ),
                    ),
                  ),
                ),

                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 5,horizontal: 50.0),
                  child: Padding(
                    padding: EdgeInsets.all(1),
                    child: ListTile(
                      leading:Icon(
                        Icons.phone_android,
                        color: Colors.teal.shade500,
                        size: 25,
                      ),
                      title:Text(
                          "+977-9850894065"
                      ) ,
                    ),
                  ),
                ),

                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 5,horizontal: 50),
                  child: Padding(
                    padding: EdgeInsets.all(1),
                    child: ListTile(
                      leading:Icon(
                        Icons.password,
                        color: Colors.teal.shade500,
                        size:25,
                      ),
                    ),
                  ),
                ),
                // Card(
                //   color: Colors.white,
                //   child: ElevatedButton(
                //     onPressed: (){
                //       print("login");
                //     },
                //     child: Text("Login"),
                //   ),
                // )
                // Buttons Row
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Handle login logic here
                          print('Login button pressed');
                        },
                        child: Text('Login'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Handle signup logic here
                          print('Signup button pressed');
                        },
                        child: Text('Signup'),
                      ),
                    ],
                  ),
                ),
               Text(
                   "For any help click the below link"
                   ),
                ElevatedButton(
                  onPressed: () {
                    // Handle login logic here
                    print('Query');
                  },
                  child: Text('Click here'),
                ),
              ],

            ),
        ),
      ),
    );
  }
}

