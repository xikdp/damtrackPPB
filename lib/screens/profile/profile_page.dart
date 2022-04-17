import 'package:damtrack/screens/profile/components/body.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.amber,
      //   iconTheme: IconThemeData(color: Colors.white),
      // ),
      body: Body(),
    );
  }
}