import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

import 'header_with_searchBox.dart';
import 'information_damri.dart';
import 'information_damri2.dart';
import 'title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          
          TitleWithMoreButton(
            title: "New Information",
          ),
          
          InformationDamri(),
          
          TitleWithMoreButton(
            title: "Information",
          ),

          InformationDamri2(),         
        ],
      ),
    );
  }
}