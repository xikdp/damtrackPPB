import 'package:damtrack/screens/detail_information/detail_information_screens.dart';
import 'package:flutter/material.dart';

class InformationDamri2 extends StatelessWidget {
  const InformationDamri2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InformationCard2(
          image: "assets/images/damri.jpg",
          title: "Berikut daftar track bus damri \ndikota Bandung",
          more: "More",
          press: () {
            Navigator.push(
              context, MaterialPageRoute(
                builder: (context) => DetailInformationScreen(),
              ),
            );
          },
        ),
        InformationCard2(
          image: "assets/images/damri.jpg",
          title: "Berikut daftar track bus damri \ndikota Bandung",
          more: "More",
          press: () {
            Navigator.push(
              context, MaterialPageRoute(
                builder: (context) => DetailInformationScreen(),
              ),
            );
          },
        ),
        InformationCard2(
          image: "assets/images/damri.jpg",
          title: "Berikut daftar track bus damri \ndikota Bandung",
          more: "More",
          press: () {
            Navigator.push(
              context, MaterialPageRoute(
                builder: (context) => DetailInformationScreen(),
              ),
            );
          },
        ),
      ],
    );
  }
}

class InformationCard2 extends StatelessWidget {
  const InformationCard2({
    Key? key,
    required this.title, 
    required this.more, 
    required this.image,
    required this.press,
  }) : super(key: key);

  final String title, more, image;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: 20/2,
        right: 20/2,
        top: 20/2,
        bottom: 10 * 2.5
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 8,
            spreadRadius: 4,
            offset: Offset(0, 10),
          ),
        ],
      ),
      width: size.width * 0.8,
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), 
              topRight: Radius.circular(10)
            ),
            child: Image.asset("$image", height: 200, fit: BoxFit.fill),
           ),

           Container(
              padding: EdgeInsets.all(20/2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10), 
                  bottomRight: Radius.circular(10)
                ),
                boxShadow: [
                  BoxShadow (
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Colors.grey.withOpacity(0.8),
                  ),
                ],
              ),
                child: Row(
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "$title",
                            style:
                            Theme.of(context).textTheme.button,
                          ),
                        ]
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: press,
                      child: 
                        new Text(
                          '$more',
                          style: TextStyle(
                            color: Colors.amber.withOpacity(0.8), fontWeight: FontWeight.bold
                          ),
                        ),
                    ),
                  ],
                ),
              
           ),
        ],
      ),
    );
  }
}