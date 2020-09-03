import 'package:donot_be_sad/widget/data_source.dart';
import 'package:flutter/material.dart';

class Khwater extends StatefulWidget {
  @override
  _KhwaterState createState() => _KhwaterState();
}

class _KhwaterState extends State<Khwater> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal[800],
            title: Text(
              "خواطر ",
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
                  itemCount: DataSource.khwater.length,
                  itemBuilder: (context, index) {
                    return khwaters(DataSource.khwater[index]['body'], context);
                  })
            ],
          ),
        ));
  }

  Widget khwaters(String title, BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              boxShadow: [BoxShadow(spreadRadius: 3, color: Colors.grey)],
              color: Colors.teal[800],
              borderRadius: BorderRadius.all(Radius.circular(10))),
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                // softWrap: false,
                // overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          )),
    );
  }
}
