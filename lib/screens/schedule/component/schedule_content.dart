import 'package:flutter/material.dart';
import 'schedule_card.dart';

class ScheduleContent extends StatelessWidget{
  const ScheduleContent({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
         ScheduleCard(
          icon: "assets/icons/damri.png",
          namaDamri: "Bus Damri Mawar",
          platDamri: "Plat : D 4213 UCA",
          jalurDamri: "Jalur : Leuwi Panjang - Buah Batu",
          jamOperasional: "Jam Operasional : 09.00 - 19.00 WIB",
        ),
         ScheduleCard(
          icon: "assets/icons/damri.png",
          namaDamri: "Bus Damri Ichsan",
          platDamri: "Plat : D 4000 ICN",
          jalurDamri: "Jalur : Baleendah - Pasteur",
          jamOperasional: "Jam Operasional : 09.00 - 21.00 WIB",
        ),
        ScheduleCard(
          icon: "assets/icons/damri.png",
          namaDamri: "Bus Damri Komang",
          platDamri: "Plat : D 1232 KMG",
          jalurDamri: "Jalur : Situsaeur - Braga",
          jamOperasional: "Jam Operasional : 09.00 - 17.00 WIB",
        ),
        ScheduleCard(
          icon: "assets/icons/damri.png",
          namaDamri: "Bus Damri Jotes",
          platDamri: "Plat : D 0000 JRD",
          jalurDamri: "Jalur : Pungkur - Pasir Kaliki",
          jamOperasional: "Jam Operasional : 07.00 - 17.00 WIB",
        ),
        ScheduleCard(
          icon: "assets/icons/damri.png",
          namaDamri: "Bus Damri Aqsa",
          platDamri: "Plat : D 0000 AQS",
          jalurDamri: "Jalur : Lembang - Lebakgede",
          jamOperasional: "Jam Operasional : 09.00 - 17.00 WIB",
        ),
      ],
    );
  }
 }
