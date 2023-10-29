import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String imgUrl;
  final String bikeName;
  final bool available;
  final int price;
  const ItemCard(
      {super.key,
      required this.available,
      required this.bikeName,
      required this.imgUrl,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
      clipBehavior: Clip.hardEdge,
      height: 59,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffBABABA), width: 2),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 35,
                width: 45,
                margin: const EdgeInsets.only(left: 10),
                child: Image.asset(imgUrl),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bikeName,
                      style: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.w600, height: 1),
                    ),
                    Row(
                      children: [
                        Text(
                          "$price/",
                          style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              height: 1),
                        ),
                        const Text(
                          "per day",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w300,
                              height: 1),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            height: 24,
            width: 70,
            margin: const EdgeInsets.only(right: 20),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: available ? Colors.black : const Color(0xffBFC5BF),
                borderRadius: BorderRadius.circular(4)),
            child: Center(
              child: Text(
                available ? "1" : "Add",
                style:
                    TextStyle(color: available ? Colors.white : Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}
