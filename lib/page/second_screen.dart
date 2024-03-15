import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ucp_satu_pam_lanjut/widget/card_widget.dart';
import 'package:ucp_satu_pam_lanjut/widget/form_menu_widget.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key, required this.nama, required this.notelp});

  final String nama;
  final String notelp;

  @override
  Widget build(BuildContext context) {
    var menuKey = GlobalKey<FormState>();
    var namaMakanan = TextEditingController();
    var namaMinuman = TextEditingController();
    var namaDessert = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Masukan Data Pesanan"),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              CardWidget(nama: nama, notelp: notelp),
              FormMenu(
                  menuKey: menuKey,
                  etMakanan: namaMakanan,
                  etMinuman: namaMinuman,
                  etDessert: namaDessert)
            ],
          ),
        ],
      ),
    );
  }
}
