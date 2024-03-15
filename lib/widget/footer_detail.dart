import 'package:flutter/material.dart';

class FooterDetailWidget extends StatelessWidget {
  FooterDetailWidget({
    super.key,
    required this.onPressedOk,
  });
  final VoidCallback onPressedOk;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        ElevatedButton(
          onPressed: onPressedOk,
          child: const Text("Submit"),
        ),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
