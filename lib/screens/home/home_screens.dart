import 'package:damtrack/screens/home/components/body.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../components/bottom_navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      // appBar: buildAppBar(),
      body: Body(),
      // bottomNavigationBar: BottomNavbar(),
    );
  }
}