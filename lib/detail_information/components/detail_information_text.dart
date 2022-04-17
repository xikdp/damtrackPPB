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
                        "\nIngat! Hanya 3 Rute DAMRI Bandung yang Masih Beroperasi\n",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "\nBandung - Jum'at 29 Oktober 2021",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),

                      Text(
                        "\nPerusahaan umum (Perum) DAMRI menutup sejumlah rute bus di cabang Bandung. Namun, masih ada tiga rute yang beroperasi.\n \nTiga rute yang masih memberi pelayanan, yakni Jatinangor-Elang via tol, Cibiru-Kebon Kelapa dan Alun-alun-Kota Baru Parahiyangan.\n \nSementara 8 rute yang setop operasi adalah, Cicaheum-Cibeureum, Ledeng-Leuwipanjang, Dipatiukur-Leuwipanjang, Elang-Jatinangor via Cibiru, Dipatiukur-Jatinangor, Kebon Kalapa-TJ Sari, Cicaheum-Leuwipanjang, Alun-alun Bandung-Ciburuy.\n \nSekretaris Perusahaan DAMRI Sidik Pramono menjelaskan penyebab penghentian sejumlah rute DAMRI Bandung. Salah satunya karena mayoritas pelaku perjalanan di Bandung tidak menggunakan bus kota dalam bermobilitas.\n \nPenghentian sementara ini pun masih belum dapat dipastikan sampai kapan. Namun, pihaknya tak menutup kemungkinan armada di rute-rute tersebut bisa kembali dioperasikan.\n \nPihaknya pun telah berkoordinasi dengan Pemerintah Daerah untuk memastikan pelayanan transportasi publik tidak terganggu, khususnya pada rute-rute DAMRI menghentikan sementara kegiatan operasinya.\n",
                        style: TextStyle(color: Color.fromARGB(255, 59, 59, 59)),
                        ),
                      // Text("\nTiga rute yang masih memberi pelayanan, yakni Jatinangor-Elang via tol, Cibiru-Kebon Kelapa dan Alun-alun-Kota Baru Parahiyangan."),
                      // Text("\nSementara 8 rute yang setop operasi adalah, Cicaheum-Cibeureum, Ledeng-Leuwipanjang, Dipatiukur-Leuwipanjang, Elang-Jatinangor via Cibiru, Dipatiukur-Jatinangor, Kebon Kalapa-TJ Sari, Cicaheum-Leuwipanjang, Alun-alun Bandung-Ciburuy."),
                      // Text(""),
                      // Text("\nPERGI	» \nKopo – Pasir Koja – Astana Anyar – Kebon Jati – Pasir Kaliki – Sukajadi – Setiabudi\n\nPULANG	« \nSetiabudi – Sukaasih – Sukajadi – Pasir Kaliki – Kebon Jati – Otista – BKR – Leuwi Panjang")
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