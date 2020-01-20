//
import 'package:flutter/material.dart';
import 'package:gestregistrationdemo/ui/PasswordlessScreen.dart';
import 'package:gestregistrationdemo/util/constants.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case passwordLessRoute:
        return MaterialPageRoute(builder: (_) => PasswordLessScreen());

    }
  }
}
