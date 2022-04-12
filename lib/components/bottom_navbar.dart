import 'package:damtrack/halte_information/halte_information_screen.dart';
import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container (
      padding: EdgeInsets.only(
        left: 20*2,
        right: 20*2,
        bottom: 20/2,
      ),
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -5),
            blurRadius: 20,
            color: Colors.grey,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home, semanticLabel: "Home"),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.schedule, semanticLabel: "Schedule"), 
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.directions_bus, semanticLabel: "Halte"), 
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => HalteInformation(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}