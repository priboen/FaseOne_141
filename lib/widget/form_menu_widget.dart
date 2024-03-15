import 'package:flutter/material.dart';

class FormMenu extends StatefulWidget {
  FormMenu(
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
  State<FormMenu> createState() => _FormMenuState();
}

class _FormMenuState extends State<FormMenu> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.menuKey,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.name,
              controller: widget.etMakanan,
              decoration: const InputDecoration(
                  labelText: "Makanan",
                  hintText: "Masukkan Makanan yang kamu mau",
                  border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: widget.etMinuman,
              decoration: const InputDecoration(
                  labelText: "Minuman",
                  hintText: "Masukkan Minuman yang kamu mau",
                  border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: widget.etDessert,
              decoration: const InputDecoration(
                  labelText: "Dessert",
                  hintText: "Masukkan Dessert yang kamu mau",
                  border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
