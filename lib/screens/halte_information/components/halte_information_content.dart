import 'package:flutter/material.dart';

import 'halte_information_card.dart';

class halte_information_content extends StatelessWidget {
  const halte_information_content({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: <Widget>[
          halte_information_card(
            icon: "assets/icons/getonbus.png",
            title: "Halte Leuwi Panjang",
            subtitle1: "Jalan Leuwi Panjang",
            subtitle2: "Situsaeur, Kec. Bojongloa Kidul, Kota Bandung, Jawa Barat",
          ),

          halte_information_card(
            icon: "assets/icons/getonbus.png",
            title: "Halte Damri Cibiru",
            subtitle1: "Kebon Kalapa",
            subtitle2: "Cipadung Wetan, Kec. Panyileukan, Kota Bandung, Jawa Barat",
          ),

          halte_information_card(
            icon: "assets/icons/getonbus.png",
            title: "Halte Leuwi Panjang",
            subtitle1: "Jalan Leuwi Panjang",
            subtitle2: "Situsaeur, Kec. Bojongloa Kidul, Kota Bandung, Jawa Barat",
          ),

          halte_information_card(
            icon: "assets/icons/getonbus.png",
            title: "Halte Damri Kebon Kalapa",
            subtitle1: "Tanjungsari",
            subtitle2: "Pungkur, Kec. Regol, Kota Bandung, Jawa Barat",
          ),

          halte_information_card(
            icon: "assets/icons/getonbus.png",
            title: "Halte Damri Kebon Kawung",
            subtitle1: "Jl. Kebon Kawung No.20",
            subtitle2: "Pasir Kaliki, Kec. Cicendo, Kota Bandung, Jawa Barat",
          ),

          halte_information_card(
            icon: "assets/icons/getonbus.png",
            title: "Halte DAMRI Dipatiukur",
            subtitle1: "Jl. Dipati Ukur",
            subtitle2: "Lebakgede, Kecamatan Coblong, Kota Bandung, Jawa Barat",
          ),
        ],
    );
  }
}