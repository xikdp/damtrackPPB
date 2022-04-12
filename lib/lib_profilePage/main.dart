import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(210, 201, 201, 87),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/avatar.jpg')
            ),
            Text(
              "User's name",
              style: TextStyle(
                fontSize: 40.0,
                color : Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: "Pacifico",
              )
            )
          ],
        ),)
    );
  }
}