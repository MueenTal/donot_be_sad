import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:url_launcher/url_launcher.dart';

class FBM {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  void conf() {
    _firebaseMessaging.subscribeToTopic("Public");
    _firebaseMessaging.configure(
      onMessage: (message) async {
        final notificationData = message['data'];
        String url = notificationData["goto_url"];
        if (url != "") {
          if (await canLaunch(url)) {
            await launch(url);
          } else {
            print('Could not launch $url');
          }
        }
      },
      onLaunch: (message) async {
        final notificationData = message['data'];
        String url = notificationData["goto_url"];
        if (url != "") {
          if (await canLaunch(url)) {
            await launch(url);
          } else {
            print('Could not launch $url');
          }
        }
      },
      onResume: (message) async {
        final notificationData = message['data'];
        String url = notificationData["goto_url"];
        if (url != "") {
          if (await canLaunch(url)) {
            await launch(url);
          } else {
            print('Could not launch $url');
          }
        }
      },
    );
  }
}
