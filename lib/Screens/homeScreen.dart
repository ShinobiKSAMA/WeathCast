import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Widgets/reUsableCard.dart';
import '../Widgets/dateLoc.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DateLocation(
                dateData: "Aug 28th, 2020",
                locData: "Panvel",
              ),
              Expanded(child: cardGroup()),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.brightness_1), title: Text("Today"),),
          BottomNavigationBarItem(icon: Icon(Icons.brightness_1), title: Text("Tomorrow"),),
          BottomNavigationBarItem(icon: Icon(Icons.brightness_1), title: Text("Week"),),
        ],
      ),
    );
  }
}

Widget cardGroup() {
  return Container(
    color: Colors.white,
    padding: const EdgeInsets.symmetric(vertical: 16.0),
    child: Row(
      children: [
        Column(
          children: [
            CustomCard(
              flexVal: 3,
              cardColor: Color(0xFF2D9CDB),
              cardTitle: "Humidity",
              cardIcon: Icons.wb_sunny,
              cardValue: "95%",
            ),
            CustomCard(
              flexVal: 4,
              cardColor: Color(0xFF6FCF97),
              cardTitle: "Wind",
              cardIcon: Icons.wb_sunny,
              cardValue: "10 Km/h",
            ),
          ],
        ),
        Column(
          children: [
            CustomCard(
              flexVal: 4,
              cardColor: Color(0xFFF2C94C),
              cardTitle: "Temperature",
              cardIcon: Icons.wb_sunny,
              cardValue: "26 C",
            ),
            CustomCard(
              flexVal: 3,
              cardColor: Color(0xFFEB5757),
              cardTitle: "Visibility",
              cardIcon: Icons.visibility,
              cardValue: "3 Km",
            ),
          ],
        ),
      ],
    ),
  );
}