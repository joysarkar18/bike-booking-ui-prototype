import 'package:flutter/material.dart';

class SelectDate extends StatefulWidget {
  final String type;
  const SelectDate({super.key, required this.type});

  @override
  State<SelectDate> createState() => _SelectDateState();
}

class _SelectDateState extends State<SelectDate> {
  final DateTime _selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.only(top: 14),
      height: 70,
      width: MediaQuery.of(context).size.width - 90,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 214, 211, 211),
          borderRadius: BorderRadius.circular(20)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.type,
                style: const TextStyle(
                    color: Color(0xff8C7E7E),
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                "${_selectedDate.day}-${_selectedDate.month}-${_selectedDate.year}",
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
        IconButton(
            onPressed: () {
              showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime(2030),
              );
            },
            icon: Image.asset(
              "Assets/Images/calender.png",
              height: 30,
            ))
      ]),
    );
  }
}
