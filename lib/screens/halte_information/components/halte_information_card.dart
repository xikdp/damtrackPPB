import 'package:flutter/material.dart';

class halte_information_card extends StatelessWidget {
  const halte_information_card({
    Key? key, required this.icon, required this.title, required this.subtitle1, required this.subtitle2, //this.press,
  }) : super(key: key);

  final String icon, title, subtitle1, subtitle2;
  // final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        top: 20/2,
      ),
      // color: Color.fromARGB(255, 228, 228, 228),
      child: Column(
        children: <Widget>[
              Card( //card-1
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:Container(
                      height: 150,
                      child: Row(
                        children: [
                          Center(
                            child:Container(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                    Padding(padding: EdgeInsets.only(
                                      top: 15,
                                    )),
                                    Image.asset(icon, width: 40, height: 40,),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child:Container(
                              alignment: Alignment.topLeft,
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: 5.0),
                                    alignment: Alignment.topLeft,
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "$title",
                                            style: TextStyle(
                                              color: Colors.black.withOpacity(0.8),
                                              fontWeight: FontWeight.w700,
                                              fontSize: 20
                                            )
                                          ),
                                        ],
                                      ),
                                    )
                                  ),
                                  Container(
                                    // flex: 5, //if expanded
                                    alignment: Alignment.topLeft,
                                    child: RichText(
                                      text: TextSpan(
                                        children:  [
                                          TextSpan(
                                            text: "$subtitle1",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15
                                            )
                                          ),
                                        ],
                                      ),
                                    )
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "$subtitle2",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15
                                            )
                                          ),
                                        ],
                                      ),
                                    )
                                  ),
                                  Spacer(),
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 250,
                                    ),
                                    child: FlatButton( //COTS I Komang Danda Priyowittesa - Menambah fitur tombol favorite
                                        onPressed: () {
                                        },
                                        child: Icon(Icons.favorite_outline_outlined, color:Colors.black54),
                                      ),
                                  ),
                                ],
                              ),
                            ),
                            // flex:8 ,
                          ),
                        ],
                      ),
                    ),
                    elevation: 10,
                    margin: EdgeInsets.all(10),
                  ),

        ],
      ), 
    );
  }
}