import 'package:flutter/cupertino.dart';

class Responsive extends StatelessWidget {

  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;
  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet, required this.desktop,
  }) : super(key: key);

  //The Size work fine on my design maybe you be need some customization depends on your design

  static bool isMobile(BuildContext context) =>
    MediaQuery.of(context).size.width < 850;

  static bool isTablet(BuildContext context) =>
    MediaQuery.of(context).size.width < 1100 &&
    MediaQuery.of(context).size.width >= 850;

  static bool isDesktop(BuildContext context) =>
    MediaQuery.of(context).size.width >= 1100;  

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    //if our width is more than 1100 then we consider it as desktop
    if(_size.width >= 1100){
      return desktop;
    }
    //if our width is less than 1100 and mor than 850 then we consider it as tablet
    else if(_size.width >= 850 && tablet != null){
      return tablet!;
    }
   //if our width is less than 850 then we consider it as mobile
    else {
      return mobile;
    }

  }
  
}
