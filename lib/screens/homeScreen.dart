import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:samvaad/widgets/favouriteContact.dart';

import '../widgets/widgets.dart';

class homeScreen extends StatefulWidget {
  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            size: 30.0,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        title: Center(
          child: Text(
            "samVAAD",
            style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
          ),
        ),
        elevation: 0.0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: 30.0,
              )),
        ],
      ),
      body: Column(
        children: [
          categorySelector(),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                )),
            child: Column(
              children: [
                favouriteContact(),
                recentChat(),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
