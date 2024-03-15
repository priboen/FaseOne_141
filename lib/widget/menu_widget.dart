import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget(
      {super.key,
      required this.menuKey,
      required this.etMakanan,
      required this.etMinuman,
      required this.etDessert});

  final GlobalKey<FormState> menuKey;
  final TextEditingController etMakanan;
  final TextEditingController etMinuman;
  final TextEditingController etDessert;

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.menuKey,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: widget.etMakanan,
              decoration: const InputDecoration(
                labelText: "Makanan",
                hintText: "Masukkan Nama Makanan",
                prefixIcon: Icon(Icons.food_bank),
              ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                bool valid = RegExp(r'^[a-zA-Z]+$').hasMatch(value!);
                if (value!.isEmpty) {
                  return "Wajib pesan!";
                } else if (!valid) {
                  return "Hanya tulis nama makanan saja!";
                }
                return null;
              },
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: widget.etMakanan,
              decoration: const InputDecoration(
                labelText: "Minuman",
                hintText: "Masukkan Nama Minuman",
                prefixIcon: Icon(Icons.local_drink),
              ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                bool valid = RegExp(r'^[a-zA-Z]+$').hasMatch(value!);
                if (value!.isEmpty) {
                  return "Wajib pesan!";
                } else if (!valid) {
                  return "Hanya tulis nama makanan saja!";
                }
                return null;
              },
            ),
          ],
        ),
      ),
    );
  }
}
