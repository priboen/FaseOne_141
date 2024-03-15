import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  CardWidget({super.key, required this.nama, required this.notelp});

  final String nama;
  final String notelp;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Card(
          color: Colors.blue[400],
          elevation: 4,
          child: SizedBox(
            height: 110,
            width: 1250,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Selamat Datang, $nama',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "No Telpon : $notelp",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Mau Makan Apa hari ini?",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
