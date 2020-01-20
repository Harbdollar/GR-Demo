//
import 'package:flutter/material.dart';
import 'package:gestregistrationdemo/screen/WrapperScreen.dart';
import 'file:///C:/Users/h/FlutterProjects/gestregistrationdemo/lib/screen/PasswordlessScreen.dart';
import 'package:gestregistrationdemo/util/constants.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      
      case passwordLessRoute:
        return MaterialPageRoute(builder: (_) => PasswordLessScreen());

        case wrapperRoute:
        return MaterialPageRoute(builder: (_) => WrapperScreen());

    }
  }
}
