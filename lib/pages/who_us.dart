import 'package:flutter/material.dart';

class WhoUS extends StatefulWidget {
  @override
  _WhoUSState createState() => _WhoUSState();
}

class _WhoUSState extends State<WhoUS> {
  @override
  Widget build(BuildContext context) {
    return (Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal[800],
            title: Text(
              "من نحن ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Changa'),
            ),
          ),
          body: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.teal[400],
                  Colors.teal.shade500,
                ])),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Center(
                    child: Text(
                      " المطور معين الطلاع ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontFamily: 'Changa',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.red,
                  )
                ],
              )
            ],
          ),
        )));
  }
}
