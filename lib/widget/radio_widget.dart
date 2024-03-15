import 'package:flutter/material.dart';

class RadioWidget extends StatefulWidget {
  const RadioWidget({super.key});

  @override
  State<RadioWidget> createState() => _RadioWidgetState();
}

List<String> _radioList = ["Laki-laki", "Perempuan"];

class _RadioWidgetState extends State<RadioWidget> {
  String currentOption = _radioList[0];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: [
            Text(
              "Masukan Jenis Kelamin",
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
        ListTile(
          title: Text('Laki-Laki'),
          leading: Radio(
            value: _radioList[0],
            groupValue: currentOption,
            onChanged: (value) {
              setState(() {
                currentOption = value.toString();
              });
            },
          ),
        ),
        ListTile(
          title: Text('Perempuan'),
          leading: Radio(
              value: _radioList[1],
              groupValue: currentOption,
              onChanged: (value) {
                setState(() {
                  currentOption = value.toString();
                });
              }),
        )
      ],
    );
  }
}
