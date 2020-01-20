import 'package:flutter/widgets.dart';
import 'package:gestregistrationdemo/enum/device_screen_type.dart';

class SizingInformation{
  final Orientation orientation;
  final DeviceScreenType deviceScreenType;
  final Size screenSize, localWidgetSize;

SizingInformation({this.orientation,
this.deviceScreenType,
this.screenSize,
this.localWidgetSize});

@override
  String toString() {
    return 'Orientation: $orientation ' +
    '\n DeviceScreentype: $deviceScreenType,\n' +
     'ScreenSize: $screenSize,\n LocalWigets: $localWidgetSize';
  }

}