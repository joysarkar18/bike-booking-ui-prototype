import 'package:bike_rent_app/screen/home/widgets/options_container.dart';
import 'package:flutter/material.dart';

List<String> options = ["Adventure", "Cruiser", "Sportsbike", "Tourer"];

class OptionsList extends StatefulWidget {
  const OptionsList({super.key});

  @override
  State<OptionsList> createState() => _OptionsListState();
}

class _OptionsListState extends State<OptionsList> {
  int _selectedIndex = 99999;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        margin: const EdgeInsets.only(top: 30, left: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: options.length,
          itemBuilder: (context, index) {
            return InkWell(
              key: UniqueKey(),
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
              child: OptionContainer(
                txt: options[index],
                selectedOrNot: _selectedIndex == index,
              ),
            );
          },
        ));
  }
}
