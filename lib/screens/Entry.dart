import 'package:TornResident/screens/ApiKey.dart';
import 'package:TornResident/widgets/Entry/ActiveUsers.dart';
import 'package:TornResident/widgets/Entry/VersionTab.dart';
import 'package:flutter/material.dart';

class Entry extends StatefulWidget {
  @override
  _EntryState createState() => _EntryState();
}

class _EntryState extends State<Entry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                ActiveUsers(),
                VersionTab(),
              ],
            ),
            Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  margin: EdgeInsets.only(
                    bottom: 20.0,
                    left: 10.0,
                    right: 10.0,
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 50.0,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            // return Dashboard();
                            return ApiKey();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'CONTINUE',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
