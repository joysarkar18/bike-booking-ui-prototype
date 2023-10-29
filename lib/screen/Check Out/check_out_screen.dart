import 'package:bike_rent_app/screen/Check%20Out/widgets/amount_card.dart';
import 'package:bike_rent_app/screen/Check%20Out/widgets/date_card.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(children: [
              Row(
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
                      "Check Out",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    )),
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 40),
                height: 183,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: const Color(0xffBABABA),
                    borderRadius: BorderRadius.circular(30)),
                child: const Column(children: [
                  SelectDate(type: "Start Date"),
                  SelectDate(type: "End Date"),
                ]),
              ),
              const SizedBox(
                height: 50,
              ),
              const SizedBox(
                height: 50,
                child: TextField(
                  style: TextStyle(
                      color: Color(0xffD2CFCF),
                      decoration: TextDecoration.none,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    hintText: "Apply coupon",
                    hintStyle:
                        TextStyle(color: Color(0xffD2CFCF), fontSize: 20),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.red)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Color(0xffBABABA))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.grey)),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Details",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      const Divider(
                        color: Color(0xffBABABA),
                        thickness: 2,
                        height: 2,
                      ),
                      const AmountCard(txt: "Days", val: "4"),
                      const AmountCard(txt: "Rent", val: "₹ 5996"),
                      const AmountCard(txt: "Additional items", val: "₹ 6400"),
                      const AmountCard(txt: "Coupon Discount", val: "₹   396"),
                      const Divider(
                        color: Color(0xffBABABA),
                        thickness: 1.5,
                        height: 22,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Amount",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "₹ 12000",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      SizedBox(
                        height: 64,
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                backgroundColor: Colors.black),
                            child: const Text(
                              "PAY",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700),
                            )),
                      )
                    ]),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
