import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20 * 2.5),
      height: size.height * 0.25,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 36 + 20
            ),
            height: size.height * 0.25 - 27,
            decoration: BoxDecoration( //background atas
              color: Colors.amber,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35)
              ),
            ),
            child: Row(
              children: <Widget>[
                Text( //teks menyapa
                  "Hi Smith !",
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold
                  ),
                ),
                Spacer(),
                CircleAvatar( //foto profile
                  backgroundImage: AssetImage("assets/images/dd.jpg"),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 54,
              decoration: BoxDecoration( //style search box
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.23),
                    blurRadius: 20,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              child: TextField( //search box
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle (
                    color: Colors.amber,
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  suffixIcon: Icon(Icons.search, color: Colors.amber)
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}