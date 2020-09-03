import 'package:donot_be_sad/widget/azkar.dart';
import 'package:donot_be_sad/widget/data_source.dart';
import 'package:flutter/material.dart';

class AzkarMorning extends StatefulWidget {
  @override
  _AzkarMorningState createState() => _AzkarMorningState();
}

class _AzkarMorningState extends State<AzkarMorning> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[800],
          title: Text(
            "أذكار الصباح ",
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
              itemCount: DataSource.azkarsbah.length,
              itemBuilder: (context, index) {
                return Azkar(
                  body1: DataSource.azkarsbah[index]['body1'],
                  body2: DataSource.azkarsbah[index]['body2'],
                  numu: DataSource.azkarsbah[index]['num'],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
