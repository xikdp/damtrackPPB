import 'package:damtrack/screens/halte_information/halte_information_screen.dart';
import 'package:damtrack/screens/profile/profile_page.dart';
import 'package:damtrack/screens/home/home_screens.dart';
import 'package:damtrack/screens/sign_in/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'screens/home/components/header_with_searchbox.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Damtrack',
      theme: ThemeData(
        // scaffoldBackgroundColor: Color.fromARGB(255, 255, 220, 65),
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}