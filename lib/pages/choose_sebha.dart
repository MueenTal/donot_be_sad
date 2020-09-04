import 'package:donot_be_sad/pages/doaa.dart';
import 'package:donot_be_sad/pages/sebha.dart';
import 'package:donot_be_sad/routes/routes.dart';
import 'package:flutter/material.dart';

class ChooseSebha extends StatefulWidget {
  @override
  _ChooseSebhaState createState() => _ChooseSebhaState();
}

class _ChooseSebhaState extends State<ChooseSebha> {
  var _value = "1";

  DropdownButton _hintDown() => DropdownButton<String>(
        dropdownColor: Colors.teal[800],
        iconEnabledColor: Colors.teal,
        style: TextStyle(
            color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
        elevation: 10,
        underline: Container(
          height: 1,
          color: Colors.white,
        ),
        items: [
          DropdownMenuItem<String>(
            value: "1",
            child: Center(
              child: Text(
                "استغفر الله ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Changa'),
              ),
            ),
          ),
          DropdownMenuItem<String>(
            value: "2",
            child: Center(
              child: Text(
                "الحمد لله ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Changa'),
              ),
            ),
          ),
          DropdownMenuItem<String>(
            value: "3",
            child: Center(
              child: Text(
                "الله أكبر ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Changa'),
              ),
            ),
          ),
          DropdownMenuItem<String>(
            value: "4",
            child: Center(
              child: Text(
                " لا اله الا الله ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Changa'),
              ),
            ),
          ),
          DropdownMenuItem<String>(
            value: "5",
            child: Center(
              child: Text(
                " استغفر الله وأتوب اليه ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Changa'),
              ),
            ),
          ),
          DropdownMenuItem<String>(
            value: "6",
            child: Center(
              child: Text(
                " اللهم صلي على سيدنا محمد",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Changa'),
              ),
            ),
          ),
          DropdownMenuItem<String>(
            value: "7",
            child: Center(
              child: Text(
                "  لا حول ولا قوة إلا بالله   ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Changa'),
              ),
            ),
          ),
          DropdownMenuItem<String>(
            value: "8",
            child: Center(
              child: Text(
                " لا إله إلا أنت سبحانك اني كنت من الظالمين",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Changa'),
              ),
            ),
          ),
        ],
        onChanged: (value) {
          setState(() {
            _value = value;
          });
        },
        value: _value,
      );

  choose() async {
    switch (_value) {
      case '1':
        Navigator.pushReplacement(
            context,
            SliderA(
                widget: Sebha(
              sebha: "استغغر الله",
            )));

        // sebha: "استغغر الله",

        break;
      case '2':
        Navigator.pushReplacement(
            context,
            SliderA(
                widget: Sebha(
              sebha: "الحمد لله ",
            )));

//                                          sebha: "الحمد لله ",

        break;
      case '3':
        Navigator.pushReplacement(
            context,
            SliderA(
                widget: Sebha(
              sebha: "الله أكبر ",
            )));

        //                      sebha: "الله أكبر ",

        break;
      case '4':
        Navigator.pushReplacement(
            context,
            SliderA(
                widget: Sebha(
              sebha: " لا اله الا الله ",
            )));

        //                      sebha: " لا اله الا الله ",

        break;
      case '5':
        Navigator.pushReplacement(
            context,
            SliderA(
                widget: Sebha(
              sebha: " استغفر الله وأتوب اليه ",
            )));

        //                      sebha: " استغفر الله وأتوب اليه ",

        break;
      case '6':
        Navigator.pushReplacement(
            context,
            SliderA(
                widget: Sebha(
              sebha: " اللهم صلي على سيدنا محمد",
            )));

        //      sebha: " اللهم صلي على سيدنا محمد",

        break;
      case '7':
        Navigator.pushReplacement(
            context,
            SliderA(
                widget: Sebha(
              sebha: "  لا حول ولا قوة إلا بالله   ",
            )));

        //                      sebha: "  لا حول ولا قوة إلا بالله   ",

        break;
      case '8':
        Navigator.pushReplacement(
            context,
            SliderA(
                widget: Sebha(
              sebha: " لا إله إلا أنت سبحانك اني كنت من الظالمين ",
            )));

        //                      sebha: " لا إله إلا أنت سبحانك اني كنت من الظالمين ",

        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[800],
          title: Text(
            "اختر التسبيحة",
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            'اختر   التسبيحة',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 65),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: _hintDown(),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(40),
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 2, color: Colors.white54)
                              ],
                              color: Colors.teal[900],
                              borderRadius: BorderRadius.all(
                                Radius.circular(22),
                              )),
                          height: 80,
                          width: MediaQuery.of(context).size.width - -50,
                          child: FlatButton(
                            onPressed: () {
                              choose();
                            },
                            child: Center(
                              child: Text(
                                " انقر للتسبيح ",
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
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
