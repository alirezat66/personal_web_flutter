import 'package:flutter/rendering.dart';

class ResponsiveCheker{
  static DeviceType getDeviceType(BoxConstraints constraint){
    if (constraint.maxWidth < 900) {
      return DeviceType.MOBILE;
    } else if (constraint.maxWidth < 1200) {
      return DeviceType.TABLET;
    } else if (constraint.maxWidth < 1536) {
      return DeviceType.DESKTOP;
    } else {
      return DeviceType.LARGEDESKTOP;
    }
  }
}
enum DeviceType{
  MOBILE,
  TABLET,
  DESKTOP,
  LARGEDESKTOP
}