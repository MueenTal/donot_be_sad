import 'package:donot_be_sad/widget/data_source.dart';
import 'package:flutter/material.dart';

class Doaa extends StatefulWidget {
  @override
  _DoaaState createState() => _DoaaState();
}

class _DoaaState extends State<Doaa> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal[800],
            title: Text("أدعية",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Changa')),
          ),
          body: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height - 100,
                child: ListView.builder(
                    itemCount: DataSource.doaa.length,
                    itemBuilder: (context, index) {
                      return ExpansionTile(
                        title: Text(
                          DataSource.doaa[index]['title'],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                                child: Text(
                              DataSource.doaa[index]['body'],
                              style: TextStyle(fontSize: 18),
                            )),
                          ),
                        ],
                      );
                    }),
              ),
            ],
          ),
        ));
  }
}
