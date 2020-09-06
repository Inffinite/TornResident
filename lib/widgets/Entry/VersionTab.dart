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
            'Version: 2.3.4',
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
                FeaturesTag(info: 'Keep track of multiple api keys.'),
                FeaturesTag(info: 'Tag an unlimited number of enemies.'),
                FeaturesTag(info: 'Receive notifications when you reach your destination.'),
                FeaturesTag(info: 'Patched the bug in the targets event stalker.'),
                // FeaturesTag(info: 'Users above level 50 can post tips for other users.'),
                FeaturesTag(info: 'Fixed the target profiler.'),
                FeaturesTag(info: 'Added ability to share targets and target profiles with other users.'),
                FeaturesTag(info: 'Track your faction\'s details.'),
                FeaturesTag(info: 'Read and write access to the Shadow database has been revoked unless you get a special invitation from a high access user.'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
