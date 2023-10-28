import 'package:flutter/material.dart';

class OptionContainer extends StatelessWidget {
  final String txt;
  final bool selectedOrNot;

  const OptionContainer(
      {super.key, required this.txt, required this.selectedOrNot});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.only(right: 10),
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: selectedOrNot ? Colors.black : Colors.transparent,
          border: Border.all(color: Color(0xffBABABA), width: 2)),
      child: Center(
          child: Text(
        txt,
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: selectedOrNot ? Colors.white : Colors.black),
      )),
    );
  }
}
