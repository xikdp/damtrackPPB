import 'package:flutter/material.dart';

import 'components/body.dart';

class DetailInformationScreen extends StatelessWidget {
  const DetailInformationScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Body(),
      
    );
  }
}