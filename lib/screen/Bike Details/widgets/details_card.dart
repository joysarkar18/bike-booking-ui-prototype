import 'package:flutter/material.dart';

class DetailsCard extends StatelessWidget {
  final String description;
  final String value;
  const DetailsCard(
      {super.key, required this.description, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63,
      width: 136,
      padding: const EdgeInsets.only(left: 14, top: 3),
      margin: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffBABABA)),
          borderRadius: BorderRadius.circular(20)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          description,
          style: const TextStyle(
              color: Color(0xff8C7E7E),
              fontSize: 18,
              fontWeight: FontWeight.w400),
        ),
        Text(
          value,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
        ),
      ]),
    );
  }
}
