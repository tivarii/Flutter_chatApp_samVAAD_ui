import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class categorySelector extends StatefulWidget {
  const categorySelector({super.key});

  @override
  State<categorySelector> createState() => _categorySelectorState();
}

class _categorySelectorState extends State<categorySelector> {
  int categoryIndex = 0;
  List<String> categories = ["Messages", "Online", "Groups", "Requests"];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90.0,
        color: Theme.of(context).primaryColor,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    categoryIndex = index;
                  });
                },
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                  child: Text(
                    categories[index],
                    style: TextStyle(
                      color: index == categoryIndex
                          ? Colors.white
                          : Colors.white60,
                      letterSpacing: 1.2,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            }));
  }
}
