import 'package:flutter/widgets.dart';
import 'package:gestregistrationdemo/enum/device_screen_type.dart';

DeviceScreenType getDeviceType(MediaQueryData mediaQuery){

  var orientation = mediaQuery.orientation;

  //Fixed Device width(Chanhes with orientation)
  double deviceWidth = 0;

  if(orientation == Orientation.landscape){
    deviceWidth = mediaQuery.size.height;
    print(deviceWidth);
  }else{
    deviceWidth = mediaQuery.size.width;
    print(deviceWidth);
  }

  //Desktop........  
  if(deviceWidth > 950){

    return DeviceScreenType.Desktop;
  }

    //Tablet........
  if(deviceWidth > 600){
    return DeviceScreenType.Tablet;
  }

   //Mobile.......
 return DeviceScreenType.Mobile;
}