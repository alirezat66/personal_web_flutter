import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ResponsiveCheker {
  static DeviceType getDeviceType(BoxConstraints constraint) {
    print(constraint.maxWidth);
    if (constraint.maxWidth < 900) {
      return DeviceType.MOBILE;
    } else if (constraint.maxWidth < 1200) {
      return DeviceType.TABLET;
    } else if (constraint.maxWidth < 1570) {
      return DeviceType.DESKTOP;
    } else {
      return DeviceType.LARGEDESKTOP;
    }
  }

  static DeviceType getDeviceTypeWithWidth(BuildContext context) {
    double size = MediaQuery.of(context).size.width;

    if (size < 900) {
      return DeviceType.MOBILE;
    } else if (size < 1200) {
      return DeviceType.TABLET;
    } else if (size < 1570) {
      return DeviceType.DESKTOP;
    } else {
      return DeviceType.LARGEDESKTOP;
    }
  }

  static bool isDeviceDesktop(BoxConstraints constraint, String from) {
    print('from:$from');
    var deviceType = getDeviceType(constraint);
    print(deviceType);
    if (deviceType == DeviceType.LARGEDESKTOP ||
        deviceType == DeviceType.DESKTOP) {
      return true;
    }
    return false;
  }
  static bool isDeviceDesktopWithContext(BuildContext context) {
    var deviceType = getDeviceTypeWithWidth(context);
    print(deviceType);
    if (deviceType == DeviceType.LARGEDESKTOP ||
        deviceType == DeviceType.DESKTOP) {
      return true;
    }
    return false;
  }

  static double getFullWidth(BuildContext context, BoxConstraints constraint) {
    if (isDeviceDesktop(constraint, "getFull")) {
      return MediaQuery.of(context).size.width - 320; // 320 is Drawer width
    } else {
      return MediaQuery.of(context).size.width;
    }
  }
}

enum DeviceType { MOBILE, TABLET, DESKTOP, LARGEDESKTOP }
