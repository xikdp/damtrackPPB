import 'package:flutter/material.dart';
import 'halte_information_card.dart';
import 'halte_information_content.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: halte_information_content(),
    );
  }
}