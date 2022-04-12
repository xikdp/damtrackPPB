import 'package:flutter/material.dart';

class DetailInformationScreen extends StatelessWidget {
  const DetailInformationScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        color: Color.fromARGB(255, 228, 228, 228),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/damri.jpg"),fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)
                  ),
                ),
              ),
            ),

            Expanded(
              child: Container(
                color: Color.fromARGB(255, 228, 228, 228),
                child: ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "\nBerikut daftar track bus damri dikota Bandung",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),

                      Text("\nPERGI	» \nKopo – Pasir Koja – Astana Anyar – Kebon Jati – Pasir Kaliki – Sukajadi – Setiabudi\n\nPULANG	« \nSetiabudi – Sukaasih – Sukajadi – Pasir Kaliki – Kebon Jati – Otista – BKR – Leuwi Panjang")
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}