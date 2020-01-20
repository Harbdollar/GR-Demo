import 'package:flutter/material.dart';
import 'package:gestregistrationdemo/route.dart';
import 'package:gestregistrationdemo/style/AppText.dart';
import 'package:gestregistrationdemo/util/constants.dart';

void main(){
  runApp(MyApp(route: passwordLessRoute,)); //When the App is open, this is the first screen to display
}

class MyApp extends StatelessWidget {
  final String route;
  const MyApp({this.route});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppText.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      onGenerateRoute: Router.generateRoute, //This describe all the navigation throughout the entire App
      initialRoute:route, //This is the initial navigation
    );
  }
}