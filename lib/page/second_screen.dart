import 'package:flutter/material.dart';
import 'package:ucp_satu_pam_lanjut/data/Order.dart';
import 'package:ucp_satu_pam_lanjut/page/third_screen.dart';
import 'package:ucp_satu_pam_lanjut/widget/card_widget.dart';
import 'package:ucp_satu_pam_lanjut/widget/footer_menu_widget.dart';
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
                etDessert: namaDessert,
              ),
              FooterMenuWidget(onPressedNext: () {
                if (menuKey.currentState!.validate()) {
                  menuKey.currentState!.save();

                  Order orderBaru = Order(
                    nama: nama,
                    notelp: notelp,
                    makanan: namaMakanan.text,
                    minuman: namaMinuman.text,
                    dessert: namaDessert.text,
                  );

                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (orderBaru) => ThirdScreen(
                                nama: nama,
                                notelp: notelp,
                                makanan: namaMakanan.text,
                                minuman: namaMinuman.text,
                                dessert: namaDessert.text,
                              )),
                      (route) => false);
                }
              })
            ],
          ),
        ],
      ),
    );
  }
}
