import 'package:donot_be_sad/routes/fadeAnimation.dart';
import 'package:donot_be_sad/widget/azkar.dart';
import 'package:donot_be_sad/widget/data_source.dart';
import 'package:flutter/material.dart';

class AzkarNight extends StatefulWidget {
  @override
  _AzkarNightState createState() => _AzkarNightState();
}

class _AzkarNightState extends State<AzkarNight> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[800],
          title: Text(
            "أذكار المساء ",
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
            ListView.builder(
              itemCount: DataSource.azlarmasaa.length,
              itemBuilder: (context, index) {
                return FadeAnimationa(
                  1,
                  Azkar(
                    body1: DataSource.azlarmasaa[index]['body1'],
                    body2: DataSource.azlarmasaa[index]['body2'],
                    numu: DataSource.azlarmasaa[index]['num'],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
