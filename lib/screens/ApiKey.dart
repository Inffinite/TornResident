import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class ApiKey extends StatefulWidget {
  @override
  _ApiKeyState createState() => _ApiKeyState();
}

class _ApiKeyState extends State<ApiKey> {
  void _apiKeyModal(context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      isScrollControlled: true,
      context: context,
      builder: (context) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
              ),
              child: CupertinoTextField(
                obscureText: true,
                // enabled: false,
                suffix: IconButton(
                  icon: Icon(
                    Icons.send,
                    color: Colors.grey[800],
                  ),
                  onPressed: () {},
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: Colors.grey[200],
                ),
                maxLines: 1,
                padding: EdgeInsets.all(12.0),
                placeholder: 'Key',
                placeholderStyle: TextStyle(
                  color: Colors.black54,
                ),
              ),
            ),
            SizedBox(height: 8.0),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 0.0,
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(
                  bottom: 20.0,
                  left: 10.0,
                  right: 10.0,
                  top: 10.0,
                ),
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: Colors.deepPurpleAccent,
                ),
                child: FlatButton(
                  onPressed: () {},
                  child: Center(
                    child: Text(
                      'Add',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.0),
            Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50.0,
                    child: LoadingIndicator(
                      indicatorType: Indicator.ballScaleMultiple,
                      color: Colors.deepPurpleAccent,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 15.0,
                    ),
                    child: Text(
                      'Testing...',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                padding: EdgeInsets.only(
                  left: 10.0,
                  right: 5.0,
                  top: 10.0,
                  bottom: 10.0,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'API SETUP',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.explore,
                            size: 25.0,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: 30.0),
                    Center(
                      child: Text(
                        'NO API KEY FOUND',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              child: Container(
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
                        _apiKeyModal(context);
                      },
                      child: Text(
                        'Add Apikey',
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
            ),
          ],
        ),
      ),
    );
  }
}

// borderRadius: new BorderRadius.only(
//             topLeft: const Radius.circular(10.0),
//             topRight: const Radius.circular(10.0),
//           ),

// Container(
//           padding: EdgeInsets.only(
//             top: 10.0,
//           ),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                  CupertinoTextField(
//                       suffix: IconButton(
//                         icon: Icon(Icons.search),
//                         onPressed: () {},
//                       ),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(4.0),
//                         color: Colors.grey[100],
//                       ),
//                       maxLines: 1,
//                       padding: EdgeInsets.all(12.0),
//                       placeholder: 'Transylvania',
//                       placeholderStyle: TextStyle(
//                         color: Colors.black54,
//                       ),
//                     ),
//                 new Wrap(
//                   children: [
//                     Container(
//                       width: MediaQuery.of(context).size.width,
//                       margin: EdgeInsets.only(
//                         bottom: 20.0,
//                         left: 10.0,
//                         right: 10.0,
//                         top: 10.0,
//                       ),
//                       height: 50.0,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(4.0),
//                         color: Colors.deepPurpleAccent,
//                       ),
//                       child: FlatButton(
//                         onPressed: () {},
//                         child: Center(
//                           child: Text(
//                             'Add',
//                             style: TextStyle(
//                               fontSize: 16.0,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         );
