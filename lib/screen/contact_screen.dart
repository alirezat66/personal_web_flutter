import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:google_maps/google_maps.dart' as gMap;
import 'package:personal_website/data/constant_value.dart';
import 'package:personal_website/helper/responsive_checker.dart';
import 'package:personal_website/widget/contact_widget.dart';
import 'dart:ui' as ui;

import 'package:universal_html/html.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fullWidth = ResponsiveCheker.isDeviceDesktopWithContext(context)
        ? MediaQuery.of(context).size.width - 320
        : MediaQuery.of(context).size.width;

    return Container(
        width: fullWidth,
        color: Color(0xff191c26),
        child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: (ResponsiveCheker.isDeviceDesktopWithContext(context)
                  ? ConstantsValue.kLargeLeftRightPadding
                  : ConstantsValue.kSmallLeftRightPadding)),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: ConstantsValue.kMainTopAndBottomPadding,
              ),
              Text(
                'Contact',
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(
                height: ConstantsValue.kTitleAndSubtitlePadding,
              ),
              Text('You can contact me whit below contact info.',
                  style: Theme.of(context).textTheme.subtitle1),
              SizedBox(
                height: ConstantsValue.kSmallPaddingBetweenTwoLayout,
              ),
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 400,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ContactWidget(
                              icon: IconlyBroken.call,
                              title: 'Phone',
                              description: '+905366526420',
                              width: fullWidth / 3,
                            ),
                            ContactWidget(
                              icon: IconlyBroken.chat,
                              title: 'Gmail',
                              description: 'alirezataghizadeh66@gmail.com',
                              width: fullWidth / 3,
                            ),
                            ContactWidget(
                              icon: IconlyBroken.location,
                              title: 'Address:',
                              description: 'Turkey, Izmir, Balatcik',
                              width: fullWidth / 3,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: ConstantsValue.kSmallLeftRightPadding,
                      ),
                      Expanded(
                          child: Container(
                        height: 400,
                        child: getMap(),
                      ))
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 160,
              )
            ])));
  }

  getMap() {
    String htmlId = "7";

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(htmlId, (int viewId) {
      final myLatlng = gMap.LatLng(38.5134829, 27.036787);

      final mapOptions = gMap.MapOptions()
        ..zoom = 14
        ..center = gMap.LatLng(38.5134829, 27.036787);

      final elem = DivElement()
        ..id = htmlId
        ..style.width = "100%"
        ..style.height = "100%"
        ..style.border = 'none';

      final map = gMap.GMap(elem, mapOptions);

      gMap.Marker(gMap.MarkerOptions()
        ..position = myLatlng
        ..map = map
        ..title = 'This is my place!');

      return elem;
    });

    return HtmlElementView(viewType: htmlId);
  }
}
