import 'package:flutter/material.dart';

class Sebha extends StatefulWidget {
  final String sebha;

  const Sebha({Key key, this.sebha}) : super(key: key);
  @override
  _SebhaState createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[800],
          title: Text("المسبحة ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Changa')),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.teal[400],
                Colors.teal.shade500,
              ])),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(widget.sebha,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Changa')),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Center(
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.width / 1.5,
                        child: InkWell(
                            onTap: () {
                              setState(() {
                                count++;
                              });
                            },
                            child: Image.asset('assets/images/b1.png')))),
                SizedBox(
                  height: 250,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                Center(
                  child: Container(
                    child: Text(
                      count.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 45),
                    ),
                  ),
                ),
                SizedBox(
                  height: 230 + MediaQuery.of(context).size.width / 3,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
