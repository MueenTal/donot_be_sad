import 'package:donot_be_sad/pages/azkar_morning.dart';
import 'package:donot_be_sad/pages/azkar_night.dart';
import 'package:donot_be_sad/pages/choose_sebha.dart';
import 'package:donot_be_sad/pages/doaa.dart';
import 'package:donot_be_sad/pages/khwater.dart';
import 'package:donot_be_sad/pages/video_sad.dart';
import 'package:donot_be_sad/routes/routes.dart';
import 'package:donot_be_sad/widget/drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          drawer: Drawer(
            child: Drawerr(),
          ),
          appBar: AppBar(
            backgroundColor: Colors.teal[800],
            title: Text(
              "الرئيسية",
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
              Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Center(
                        child: Text(
                          "  لا تحزن ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 45,
                            fontFamily: 'Changa',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        height: 155,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Container(
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          spreadRadius: 2,
                                          color: Colors.white54)
                                    ],
                                    color: Colors.teal[900],
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(22),
                                    )),
                                height: 120,
                                width:
                                    MediaQuery.of(context).size.width / 2 - 28,
                                child: FlatButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context, SliderU(widget: VideoSAd()));
                                  },
                                  child: Center(
                                    child: Text(
                                      " لكل مهموم",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Changa'),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Container(
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          spreadRadius: 2,
                                          color: Colors.white54)
                                    ],
                                    color: Colors.teal[900],
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(22),
                                    )),
                                height: 120,
                                width:
                                    MediaQuery.of(context).size.width / 2 - 28,
                                child: FlatButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        SliderU(widget: AzkarMorning()));
                                  },
                                  child: Center(
                                    child: Text(
                                      " أذكار الصباح ",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Changa'),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 155,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Container(
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          spreadRadius: 2,
                                          color: Colors.white54)
                                    ],
                                    color: Colors.teal[900],
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(22),
                                    )),
                                height: 120,
                                width:
                                    MediaQuery.of(context).size.width / 2 - 28,
                                child: FlatButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context, SliderU(widget: AzkarNight()));
                                  },
                                  child: Center(
                                    child: Text(
                                      " أذكار المساء ",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Changa'),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Container(
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          spreadRadius: 2,
                                          color: Colors.white54)
                                    ],
                                    color: Colors.teal[900],
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(22),
                                    )),
                                height: 120,
                                width:
                                    MediaQuery.of(context).size.width / 2 - 28,
                                child: FlatButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context, SliderU(widget: Doaa()));
                                  },
                                  child: Center(
                                    child: Text(
                                      " أدعية ",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Changa'),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 155,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Container(
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          spreadRadius: 2,
                                          color: Colors.white54)
                                    ],
                                    color: Colors.teal[900],
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(22),
                                    )),
                                height: 120,
                                width:
                                    MediaQuery.of(context).size.width / 2 - 28,
                                child: FlatButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        SliderU(widget: ChooseSebha()));
                                  },
                                  child: Center(
                                    child: Text(
                                      " مسبحة ",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Changa'),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Container(
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          spreadRadius: 2,
                                          color: Colors.white54)
                                    ],
                                    color: Colors.teal[900],
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(22),
                                    )),
                                height: 120,
                                width:
                                    MediaQuery.of(context).size.width / 2 - 28,
                                child: FlatButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context, SliderU(widget: Khwater()));
                                  },
                                  child: Center(
                                    child: Text(
                                      " خواطر ",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Changa'),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
