import 'package:damtrack/screens/home/components/body.dart';
import 'package:flutter/material.dart';

import '../../components/bottom_navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: BottomNavbar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.menu, color: Colors.white,),
        onPressed: () {},
      ),
    );
  }
}