import 'package:flutter/material.dart';
import 'package:ucp_satu_pam_lanjut/widget/radio_widget.dart';

class FormWidget extends StatefulWidget {
  FormWidget({
    super.key,
    required this.formKey,
    required this.etNama,
    required this.etNotelp,
    required this.etAlamat,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController etNama;
  final TextEditingController etNotelp;
  final TextEditingController etAlamat;

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.name,
              controller: widget.etNama,
              decoration: const InputDecoration(
                labelText: "Nama",
                hintText: "Masukkan Nama Kamu",
                prefixIcon: Icon(Icons.person),
              ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                bool valid = RegExp(r'[a-zA-Z]').hasMatch(value!);
                if (value!.isEmpty) {
                  return "Form ini wajib di isi!";
                } else if (!valid) {
                  return "Nama tidak boleh berisi angka!";
                } else if (value.length <= 2) {
                  return "Nama Terlalu Pendek!";
                }
                return null;
              },
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: widget.etNotelp,
              decoration: const InputDecoration(
                labelText: "No Telepon",
                hintText: "Masukkan No Telp Kamu",
                prefixIcon: Icon(Icons.lock),
              ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                bool valid = RegExp(r'[0-9]+$').hasMatch(value!);
                if (value!.isEmpty) {
                  return "Form ini wajib di isi!";
                } else if (!valid) {
                  return "Nomor Telepon tidak valid!";
                } else if (value.length < 12) {
                  return "Nomor Telepon terlalu pendek!";
                }
                return null;
              },
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              keyboardType: TextInputType.multiline,
              maxLines: 3,
              controller: widget.etAlamat,
              decoration: const InputDecoration(
                labelText: "Alamat",
                hintText: "Masukkan Alamat Kamu",
                prefixIcon: Icon(Icons.location_city),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            RadioWidget()
          ],
        ),
      ),
    );
  }
}
