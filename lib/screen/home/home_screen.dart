import 'package:bike_rent_app/screen/home/widgets/bike_list.dart';
import 'package:bike_rent_app/screen/home/widgets/options_list.dart';
import 'package:bike_rent_app/screen/home/widgets/recently_viewed_card.dart';
import 'package:bike_rent_app/screen/home/widgets/search_field.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(25),
                        image: const DecorationImage(
                            image: AssetImage("Assets/Images/profile.jpg"))),
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(
                          color: Color(0xff8C7E7E),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "Abhi Tiwari",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                )
              ]),
            ),
            const SearchField(),
            const OptionsList(),
            const Padding(
              padding: EdgeInsets.only(left: 16, top: 26),
              child: Row(
                children: [
                  Text(
                    "Popular",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 21,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    " items",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 21,
                        fontWeight: FontWeight.w300),
                  )
                ],
              ),
            ),
            BikeList(),
            const Padding(
              padding: EdgeInsets.only(left: 16, top: 26),
              child: Row(
                children: [
                  Text(
                    "Recently",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 21,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    " viewed",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 21,
                        fontWeight: FontWeight.w300),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Column(
                children: [
                  RecenntCard(
                    available: true,
                    bikeName: "Hayabusa",
                    imgUrl: "Assets/Images/Frame 4.png",
                    price: 2000,
                  ),
                  RecenntCard(
                    available: false,
                    bikeName: "Classic 350",
                    imgUrl: "Assets/Images/Frame 6.png",
                    price: 1500,
                  ),
                  RecenntCard(
                    available: true,
                    bikeName: "Hayabusa",
                    imgUrl: "Assets/Images/Frame 4.png",
                    price: 2000,
                  ),
                  RecenntCard(
                    available: false,
                    bikeName: "Classic 350",
                    imgUrl: "Assets/Images/Frame 6.png",
                    price: 1500,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
