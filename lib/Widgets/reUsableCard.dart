import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {

  final int flexVal;
  final Color cardColor;
  final String cardTitle;
  final IconData cardIcon;
  final String cardValue;

  const CustomCard({
    Key key,
    @required this.flexVal,
    @required this.cardColor,
    @required this.cardTitle,
    @required this.cardIcon,
    @required this.cardValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flexVal,
      child: GestureDetector(
        child: Container(
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.fromLTRB(20, 32, 20, 32),
          width: 192.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            color: cardColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    cardIcon,
                    size: 50.0,
                    color: Colors.white,
                  ),
                  SizedBox(height: 16.0,),
                  Text(
                    "$cardTitle",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                    ),
                  ),
                ],
              ),
              Text(
                "$cardValue",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 42.0,
                ),
              ),
            ],
          ),
        ),
        onTap: () => print("$cardTitle Card Clicked"),
      ),
    );
  }
}
