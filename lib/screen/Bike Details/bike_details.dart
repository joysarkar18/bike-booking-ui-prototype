import 'package:bike_rent_app/screen/Bike%20Details/widgets/details_card.dart';
import 'package:bike_rent_app/screen/Bike%20Details/widgets/item_card.dart';
import 'package:flutter/material.dart';

class BikeDetailsScreen extends StatelessWidget {
  const BikeDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          gradient: LinearGradient(colors: [
                            const Color(0xffc4c4c4),
                            const Color(0xffc4c4c4).withOpacity(0.0)
                          ]),
                        ),
                        child: const Icon(Icons.arrow_back)),
                    Container(
                      height: 60,
                      width: 270,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xffBABABA)),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                          child: Text(
                        "Bike Details",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      )),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Indian",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "Scout Bobber",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w700),
                          ),
                          DetailsCard(
                              description: "Category", value: "Cruiser"),
                          DetailsCard(
                              description: "Displacement", value: "1133 cc"),
                          DetailsCard(
                              description: "Max. Speed", value: "124 km/h"),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 282,
                          width: 213,
                          child: Stack(
                            children: [
                              Container(
                                height: 282,
                                width: 203,
                                margin: const EdgeInsets.only(right: 20),
                                decoration: BoxDecoration(
                                  color:
                                      const Color(0xffBABABA).withOpacity(0.44),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              Positioned(
                                  top: 20,
                                  child: Image.asset(
                                    "Assets/Images/scout_bobber_1-re.png",
                                    height: 240,
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          height: 65,
                          width: 200,
                          padding: const EdgeInsets.only(left: 14, top: 3),
                          margin: const EdgeInsets.symmetric(vertical: 24),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              border:
                                  Border.all(color: const Color(0xffBABABA)),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Rent",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700,
                                      height: 1),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "1499/",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      "per day",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 20),
                child: Row(
                  children: [
                    Text(
                      "Add",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 21,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      " Items",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 21,
                          fontWeight: FontWeight.w300),
                    )
                  ],
                ),
              ),
              const ItemCard(
                available: true,
                bikeName: "Riding Jacket",
                imgUrl: "Assets/Images/jacket.png",
                price: 800,
              ),
              const ItemCard(
                available: false,
                bikeName: "Riding Gloves",
                imgUrl: "Assets/Images/gloves.png",
                price: 800,
              ),
              const ItemCard(
                available: true,
                bikeName: "Helmet",
                imgUrl: "Assets/Images/helmet.png",
                price: 800,
              ),
              const ItemCard(
                available: false,
                bikeName: "Riding Shoes",
                imgUrl: "Assets/Images/dada.png",
                price: 800,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
