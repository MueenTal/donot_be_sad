import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Azkar extends StatefulWidget {
  final String body1, body2;
  final int numu;

  const Azkar({Key key, this.body1, this.body2, this.numu}) : super(key: key);

  @override
  _AzkarState createState() => _AzkarState();
}

class _AzkarState extends State<Azkar> {
  int num = 0;
  @override
  void initState() {
    setState(() {
      num = widget.numu;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (num == 0) {
            Fluttertoast.showToast(
                msg: "لقد انتهيت من هذه ",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.white,
                textColor: Colors.teal[800],
                fontSize: 16.0);
          } else if (num == 1) {
            num--;
            Fluttertoast.showToast(
                msg: "لقد انتهيت من هذه ",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.white,
                textColor: Colors.teal[800],
                fontSize: 16.0);
            print("object");
          } else {
            num--;
          }
        });
      },
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(spreadRadius: 3, color: Colors.grey)
                        ],
                        color: Colors.teal[800],
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              widget.body1,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              widget.body2,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 35,
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              Center(
                child: Container(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(spreadRadius: 3, color: Colors.grey)
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(40.0)),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.teal[800],
                                  Colors.teal[800],
                                  Colors.teal[800],
                                ])),
                        child: Center(
                            child: Text(
                          num.toString(),
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
