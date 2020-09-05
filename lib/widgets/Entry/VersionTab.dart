import 'package:flutter/material.dart';

import 'FeaturesTag.dart';

class VersionTab extends StatelessWidget {
  const VersionTab({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadiusDirectional.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Version: 1.0',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius:
                    BorderRadiusDirectional.circular(4.0)),
            child: Column(
              children: [
                SizedBox(height: 10.0),
                FeaturesTag(info: 'Store multiple api keys.'),
                FeaturesTag(info: 'Tag an unlimited number of enemies.'),
                FeaturesTag(info: 'Receive notifications when you reach your destination.'),
                FeaturesTag(info: 'Users above level 50 can post tips for other users.'),
                FeaturesTag(info: 'Add shortnotes.'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
