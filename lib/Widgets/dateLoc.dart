import 'package:flutter/material.dart';

class DateLocation extends StatelessWidget {

  final String dateData;
  final String locData;

  const DateLocation({
    Key key,
    @required this.dateData,
    @required this.locData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0,left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            dateData,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black54,
              fontSize: 20.0,
            ),
          ),
          Text(
            locData,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 28.0,
            ),
          ),
        ],
      ),
    );
  }
}
