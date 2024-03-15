import 'package:flutter/material.dart';

class FooterMenuWidget extends StatelessWidget {
  FooterMenuWidget({
    super.key,
    required this.onPressedNext,
  });
  final VoidCallback onPressedNext;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        ElevatedButton(
          onPressed: onPressedNext,
          child: const Text("Submit"),
        ),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
