import 'package:bike_rent_app/screen/home/widgets/bike_card.dart';
import 'package:flutter/material.dart';

class BikeList extends StatefulWidget {
  const BikeList({super.key});

  @override
  State<BikeList> createState() => _BikeListState();
}

class _BikeListState extends State<BikeList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 225,
        margin: const EdgeInsets.only(top: 14, left: 16),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            BikeCard(
              bikeName: "Meteore",
              brand: "Royal Enfiled",
              imgUrl: "Assets/Images/meteor 1.png",
              price: 699,
              key: UniqueKey(),
            ),
            BikeCard(
              bikeName: "Scout Bobber",
              brand: "Indian",
              imgUrl: "Assets/Images/Indian-Scout-Bobber-2 1.png",
              price: 1499,
              key: UniqueKey(),
            ),
            BikeCard(
              bikeName: "Rebel 1100",
              brand: "Honda",
              imgUrl: "Assets/Images/meteor 1.png",
              price: 899,
              key: UniqueKey(),
            ),
          ],
        ));
  }
}
