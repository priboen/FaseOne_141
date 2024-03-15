import 'package:flutter/material.dart';
import 'package:ucp_satu_pam_lanjut/data/Order.dart';
import 'package:ucp_satu_pam_lanjut/page/first_screen.dart';
import 'package:ucp_satu_pam_lanjut/widget/footer_detail.dart';

class ThirdScreen extends StatelessWidget {
  ThirdScreen(
      {super.key,
      required this.nama,
      required this.notelp,
      required this.makanan,
      required this.minuman,
      required this.dessert});

  final String nama;
  final String notelp;
  final String makanan;
  final String minuman;
  final String dessert;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Form"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(children: [
              Text(
                "Nama: $nama",
                style: TextStyle(fontSize: 25),
              )
            ]),
            Row(
              children: [
                Text(
                  "No Telp: $notelp",
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Makanan: $makanan",
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Minuman: $minuman",
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Dessert: $dessert",
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
            FooterDetailWidget(onPressedOk: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FirstScreen()));
            })
          ],
        ),
      ),
    );
  }
}
