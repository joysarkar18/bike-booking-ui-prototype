import 'package:bike_rent_app/screen/Bike%20Details/widgets/details_card.dart';
import 'package:bike_rent_app/screen/Bike%20Details/widgets/item_card.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        gradient: LinearGradient(colors: [
                          const Color(0xffc4c4c4b5),
                          const Color(0xffc4c4c4b5).withOpacity(0.0)
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
                      "Check Out",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    )),
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
