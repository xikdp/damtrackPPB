import 'package:damtrack/halte_information/components/body.dart';
import 'package:flutter/material.dart';

class HalteInformation extends StatelessWidget {
  const HalteInformation({ Key? key }) : super(key: key);

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