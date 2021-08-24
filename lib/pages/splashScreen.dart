import 'dart:async';

import 'package:flutter/material.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  _loadSlpash() async {
    // Time (splash)
    Timer(
        Duration(seconds: 6),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen())));
  }


  @override
  void initState() {

    _loadSlpash();

    super.initState();
  }

  double targetValue = 24.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Center(
                child: Container(
                  child: TweenAnimationBuilder(
                    tween: Tween<double>(begin: 0, end: targetValue),
                    onEnd: () {
                      setState(() =>
                          targetValue = MediaQuery.of(context).size.height / 2);
                    },
                    duration: Duration(seconds: 2),
                    builder: (BuildContext context, double size, Widget child) {
                      return IconButton(
                        iconSize: size,
                        color: Colors.blue,
                        icon: child,
                        onPressed: () {
                          setState(() {
                            targetValue = targetValue == 24.0 ? 48.0 : 24.0;
                          });
                        },
                      );
                    },
                    child: Image.asset(
                      'assets/images/dont.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Image.asset(
                'assets/images/aaa.png',
                width: MediaQuery.of(context).size.width / 2.5,
                height: MediaQuery.of(context).size.height / 4,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                " سيطيب كل شيء ذات يوم ، لا تحزن ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Changa'),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class TheClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height - 45);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
