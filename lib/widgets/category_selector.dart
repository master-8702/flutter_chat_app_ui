import 'package:flutter/material.dart';

class CatagorySelector extends StatefulWidget {
  const CatagorySelector({super.key});

  @override
  State<CatagorySelector> createState() => _CatagorySelectorState();
}

class _CatagorySelectorState extends State<CatagorySelector> {
  int selectedIndex = 0;
  final List<String> categories = ['Messages', 'Online', 'Groups', 'Requests'];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90,
        color: Theme.of(context).primaryColor,
        child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Text(
                  categories[index],
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: selectedIndex == index
                          ? Colors.white
                          : Colors.white60,
                      letterSpacing: 1),
                ),
              ),
            );
          },
        ));
  }
}
