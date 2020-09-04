import 'package:donot_be_sad/pages/azkar_morning.dart';
import 'package:donot_be_sad/pages/azkar_night.dart';
import 'package:donot_be_sad/pages/choose_sebha.dart';
import 'package:donot_be_sad/pages/doaa.dart';
import 'package:donot_be_sad/pages/khwater.dart';
import 'package:donot_be_sad/pages/video_sad.dart';
import 'package:donot_be_sad/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class Drawerr extends StatelessWidget {
  _launchURL() async {
    const url = 'mailto:mueental2020@gmail.com?subject=تطبيق لا تحزن&body=';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        DrawerHeader(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
              Colors.teal[400],
              Colors.teal.shade500,
            ])),
            child: Container(
                child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Image.asset(
                      'assets/images/dont.png',
                      width: 150,
                      height: 80,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3),
                  child: Text(
                    '"وَلَا تَيْأَسُوا مِن رَّوْحِ اللَّهِ"',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                )
              ],
            ))),
        CustomListTitle("assets/icons/sad.png", " لكل مهموم   ", () {
          Navigator.push(context, SliderB(widget: VideoSAd()));
        }),
        CustomListTitle("assets/icons/morning.png", "   أذكار الصباح     ", () {
          Navigator.push(context, SliderB(widget: AzkarMorning()));
        }),
        CustomListTitle("assets/icons/night.png", "    أذكار المساء     ", () {
          Navigator.push(context, SliderB(widget: AzkarNight()));
        }),
        CustomListTitle("assets/images/aaa.png", "    أدعية      ", () {
          Navigator.push(context, SliderB(widget: Doaa()));
        }),
        CustomListTitle("assets/icons/sebha.png", "    مسبحة      ", () {
          Navigator.push(context, SliderB(widget: ChooseSebha()));
        }),
        CustomListTitle("assets/icons/allah.png", "   خواطر    ", () {
          Navigator.push(context, SliderB(widget: Khwater()));
        }),
        CustomListTitleP(Icons.email, "  تواصل معنا   ", _launchURL),
        CustomListTitleP(Icons.share, "مشاركة التطبيق", () {
          Share.share(
              ' تطبيق لا تحزن   https://play.google.com/store/apps/details?id=com.talapps.dont_be_sad',
              subject: ' مشاركة التطبيق ');
        }),
        CustomListTitleP(
          Icons.local_play,
          "   تقييم التطبيق   ",
          () async {
            const url =
                'https://play.google.com/store/apps/details?id=com.talapps.dont_be_sad';
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw 'Could not launch $url';
            }
          },
        ),
        SizedBox(
          height: 50,
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class CustomListTitle extends StatelessWidget {
  final String icon;
  final String text;
  final Function onTap;

  CustomListTitle(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade300))),
        child: InkWell(
          splashColor: Colors.teal[800],
          onTap: onTap,
          child: Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(children: <Widget>[
                  Image.asset(
                    icon,
                    height: 40,
                    width: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      text,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ]),
                Icon(Icons.arrow_right)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomListTitleP extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onTap;

  CustomListTitleP(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade300))),
        child: InkWell(
          splashColor: Colors.teal[800],
          onTap: onTap,
          child: Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(children: <Widget>[
                  Icon(
                    icon,
                    size: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      text,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ]),
                Icon(
                  Icons.arrow_right,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
