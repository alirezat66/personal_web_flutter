import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:google_maps/google_maps.dart' as gMap;
import 'package:personal_website/widget/contact_widget.dart';
import 'dart:ui' as ui;

import 'package:universal_html/html.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fullWidth = MediaQuery.of(context).size.width - 320;

    return Container(
        width: MediaQuery.of(context).size.width - 320,
        color: Color(0xff191c26),
        child: Padding(
            padding: EdgeInsets.only(left: 16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 110,
              ),
              Text(
                'Contact',
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(
                height: 30,
              ),
              Text('You can contact me whit below contact info.',
                  style: Theme.of(context).textTheme.subtitle1),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Container(
                    width: fullWidth/3 + 80,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ContactWidget(
                          icon: IconlyBroken.call,
                          title: 'Phone',
                          description: '+905366526420',
                          width: fullWidth / 3 ,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        ContactWidget(
                          icon: IconlyBroken.chat,
                          title: 'Gmail',
                          description: 'alirezataghizadeh66@gmail.com',
                          width: fullWidth / 3 ,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        ContactWidget(
                          icon: IconlyBroken.location,
                          title: 'Address:',
                          description: 'Turkey, Izmir, Balatcik',
                          width: fullWidth / 3 ,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: SizedBox(
                    height: 600,
                    
                    child: getMap(),
                  ))
                ],
              ),
              SizedBox(height: 160,)
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

