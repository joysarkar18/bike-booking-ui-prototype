import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        keyboardType: TextInputType.number,
        style: TextStyle(
            color: Color(0xffD2CFCF),
            decoration: TextDecoration.none,
            fontSize: 20,
            fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xffEFEEEE),
          hintText: "Search Bike",
          hintStyle: TextStyle(color: Color(0xffD2CFCF), fontSize: 20),
          prefixIcon: Icon(
            Icons.search,
            color: Color(0xffD2CFCF),
            size: 28,
          ),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(color: Colors.red)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(color: Colors.white60)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(color: Colors.grey)),
        ),
      ),
    );
  }
}
