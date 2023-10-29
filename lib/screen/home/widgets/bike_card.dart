import 'package:flutter/material.dart';

class BikeCard extends StatelessWidget {
  final String imgUrl;
  final String bikeName;
  final String brand;
  final int price;
  const BikeCard(
      {super.key,
      required this.brand,
      required this.bikeName,
      required this.imgUrl,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      height: 225,
      width: 143,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffBABABA), width: 2),
          borderRadius: BorderRadius.circular(20)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            width: 143,
            height: 140,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10)),
                image: DecorationImage(
                    image: AssetImage(imgUrl), fit: BoxFit.cover)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, top: 4),
          child: Text(
            bikeName,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.w700, height: 1),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            brand,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.w400, height: 1.2),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 3, left: 10),
          child: Row(
            children: [
              Text(
                "$price/",
                style: const TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w700, height: 1),
              ),
              const Text(
                "per day",
                style: TextStyle(
                    fontSize: 17, fontWeight: FontWeight.w300, height: 1),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
