import 'package:flutter/material.dart';
import 'package:gestregistrationdemo/util/sizing_information.dart';
import 'package:gestregistrationdemo/util/ui_util.dart';

class BaseWidgets extends StatelessWidget {
  final Widget Function(BuildContext context,
   SizingInformation sizingInformation) builder;

  const BaseWidgets({Key key, this.builder}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return LayoutBuilder(
      builder: (context, boxcontraints){
        var sizingInformation = SizingInformation(
      orientation: mediaQuery.orientation,
      deviceScreenType: getDeviceType(mediaQuery),
      screenSize: mediaQuery.size,
      localWidgetSize: Size(boxcontraints.maxWidth,
      boxcontraints.maxHeight)
    );
       return builder(
        context, sizingInformation
      );
      }
          
    );
  }
}