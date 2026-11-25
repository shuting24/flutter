import 'package:flutter/material.dart';

class Block extends StatelessWidget {
  //  positional and named args

  const Block(
    this.image,
    this.title, {
    super.key,
    required this.colours,
  });

  final String image;
  final String title;
  final Color colours;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: colours,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image, width: 30),
          const SizedBox(height: 10),
          Text(title),
          const SizedBox(height: 10),
          const Text("Another random Text"),
        ],
      ),
    );
  }
}
