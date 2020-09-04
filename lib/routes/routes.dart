import 'package:flutter/cupertino.dart';

class SliderU extends PageRouteBuilder {
  Widget widget;

  SliderU({this.widget})
      : super(
          pageBuilder: (context, animatio, seconderyAnimation) => widget,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(-1.0, 1.0),
                end: Offset.zero,
              ).animate(animation),
              child: SlideTransition(
                position: Tween<Offset>(
                  begin: Offset.zero,
                  end: const Offset(-1.0, 1.0),
                ).animate(secondaryAnimation),
                child: child,
              ),
            );
          },
          transitionDuration: Duration(milliseconds: 500),
        );
}

class SliderB extends PageRouteBuilder {
  Widget widget;

  SliderB({this.widget})
      : super(
          pageBuilder: (context, animatio, seconderyAnimation) => widget,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0.0, 1.0),
                end: Offset.zero,
              ).animate(animation),
              child: SlideTransition(
                position: Tween<Offset>(
                  begin: Offset.zero,
                  end: const Offset(0.0, 1.0),
                ).animate(secondaryAnimation),
                child: child,
              ),
            );
          },
          transitionDuration: Duration(milliseconds: 500),
        );
}

class SliderA extends PageRouteBuilder {
  Widget widget;

  SliderA({this.widget})
      : super(
          pageBuilder: (context, animatio, seconderyAnimation) => widget,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(-1.0, 0.0),
                end: Offset.zero,
              ).animate(animation),
              child: SlideTransition(
                position: Tween<Offset>(
                  begin: Offset.zero,
                  end: const Offset(-1.0, 0.0),
                ).animate(secondaryAnimation),
                child: child,
              ),
            );
          },
          transitionDuration: Duration(milliseconds: 500),
        );
}
