import 'package:flutter/material.dart';

import 'detail_information_banner.dart';
import 'detail_information_text.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 228, 228, 228),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              child: detail_information_banner(),
            ),

            Expanded(
              child: detail_information_text(),
            ),
          ],
        ),
      ),
    );
  }
}