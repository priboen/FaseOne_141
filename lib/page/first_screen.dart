import 'package:flutter/material.dart';
import 'package:ucp_satu_pam_lanjut/page/second_screen.dart';
import 'package:ucp_satu_pam_lanjut/widget/footer_widget.dart';
import 'package:ucp_satu_pam_lanjut/widget/form_widget.dart';
import 'package:ucp_satu_pam_lanjut/widget/header_widget.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var nama = TextEditingController();
    var notelp = TextEditingController();
    var alamat = TextEditingController();
    var formKey = GlobalKey<FormState>();

    return Scaffold(
      body: ListView(
        children: [
          HeaderWidget(),
          FormWidget(
            formKey: formKey,
            etNama: nama,
            etNotelp: notelp,
            etAlamat: alamat,
          ),
          FooterWidget(
            onPressedLogin: () {
              if (formKey.currentState!.validate()) {
                if (formKey.currentState!.validate()) {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondScreen(
                          nama: nama.text,
                          notelp: notelp.text,
                        ),
                      ),
                      (route) => false);
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Isi Form Berhasil")));
                }
              }
            },
          ),
        ],
      ),
    );
  }
}
