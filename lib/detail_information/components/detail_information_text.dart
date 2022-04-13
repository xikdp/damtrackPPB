import 'package:flutter/material.dart';

class detail_information_text extends StatelessWidget {
  const detail_information_text({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        color: Color.fromARGB(255, 228, 228, 228),
      ),
      child: Scrollbar(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Container(
                child: ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "\nBerikut daftar track bus damri dikota Bandung",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),

                      Text("\nPERGI	» \nKopo – Pasir Koja – Astana Anyar – Kebon Jati – Pasir Kaliki – Sukajadi – Setiabudi\n\nPULANG	« \nSetiabudi – Sukaasih – Sukajadi – Pasir Kaliki – Kebon Jati – Otista – BKR – Leuwi Panjang"),
                      Text("\nPERGI	» \nKopo – Pasir Koja – Astana Anyar – Kebon Jati – Pasir Kaliki – Sukajadi – Setiabudi\n\nPULANG	« \nSetiabudi – Sukaasih – Sukajadi – Pasir Kaliki – Kebon Jati – Otista – BKR – Leuwi Panjang")
                    ],
                  ),
                ),
              ),
            ],
          )
        ),
      ), 
    );
  }
}