import 'package:flutter/material.dart';

class FeaturesTag extends StatelessWidget {
  final String info;

  FeaturesTag({this.info});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.check_box,
                color: Colors.deepPurpleAccent),
            SizedBox(width: 10.0),
            Expanded(
              child: Text(
                info,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 0.5,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10.0),
      ],
    );
  }
}
