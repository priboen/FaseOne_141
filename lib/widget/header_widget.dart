import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 25,
        ),
        const Text(
          "Bebek Carok Madura",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const SizedBox(
          height: 25,
        ),
        CircleAvatar(
          backgroundImage: NetworkImage(
            "https://www.jakartakerja.com/wp-content/uploads/2022/10/Lowongan-kerja-di-Bebek-Carok-219x126.png",
          ),
          radius: 70,
        )
      ],
    );
  }
}
