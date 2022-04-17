import 'package:damtrack/components/bottom_navbar.dart';
import 'package:damtrack/screens/halte_information/components/body.dart';
import 'package:flutter/material.dart';

class HalteInformation extends StatelessWidget {
  const HalteInformation({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: buildAppBar(),
      body: Body(),
      // bottomNavigationBar: BottomNavbar(),
    );
  }

  // AppBar buildAppBar() {
  //   return AppBar(
  //     elevation: 0,
  //     leading: IconButton(
  //       icon: Icon(Icons.menu, color: Colors.white,),
  //       onPressed: () {},
  //     ),
  //   );
  // }
}