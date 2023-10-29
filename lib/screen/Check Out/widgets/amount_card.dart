import 'package:flutter/material.dart';

class AmountCard extends StatelessWidget {
  final String txt;
  final String val;
  const AmountCard({super.key, required this.txt, required this.val});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            txt,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
          ),
          Text(
            val,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
