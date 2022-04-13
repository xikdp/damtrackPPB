import 'package:flutter/material.dart';

class detail_information_banner extends StatelessWidget {
  const detail_information_banner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/damri.jpg"),fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 50,
                      offset: Offset(0, 20),
                    ),
        ],
      ),
    );
  }
}