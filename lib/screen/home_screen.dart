import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_website/data/constant_value.dart';
import 'package:personal_website/helper/responsive_checker.dart';
import 'package:personal_website/widget/download_button.dart';
import 'package:personal_website/widget/social_item_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        width: !ResponsiveCheker.isDeviceDesktopWithContext(context)
            ? MediaQuery.of(context).size.width
            : MediaQuery.of(context).size.width - 320,
        color: Theme.of(context).primaryColor,
        padding: EdgeInsets.symmetric(
            vertical: ConstantsValue.kHomeTopButtonPadding),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: ResponsiveCheker.getDeviceType(constraints) ==
                      DeviceType.LARGEDESKTOP
                  ? ConstantsValue.kPersonalInfoLargePadding
                  : ConstantsValue.kPersonalInfoSmallPadding),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: ConstantsValue.kHomeConstraintWidth,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipPath(
                  child: Image.asset(
                    'images/profile.jpeg',
                    width: 300,
                    height: 300,
                    fit: BoxFit.fitHeight,
                  ),
                  clipper: new MyCurveClipper(),
                ),
                Text(
                  'Reza Taghizadeh',
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  "I'm Mobile Developer (Flutter for now) with over 11 years of professional experience in this field.",
                  style: Theme.of(context).textTheme.subtitle1,
                  textAlign: TextAlign.center,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialItemWidget(
                        iconData: FontAwesomeIcons.github,
                        url: 'https://github.com/alirezat66'),
                    Container(
                      width: 0.25,
                      height: 25,
                      color: Color(0xffA9AFC3),
                    ),
                    SocialItemWidget(
                        iconData: FontAwesomeIcons.linkedinIn,
                        url: 'https://www.linkedin.com/in/alirezat66/'),
                    Container(
                      width: 0.25,
                      height: 25,
                      color: Color(0xffA9AFC3),
                    ),
                    SocialItemWidget(
                        iconData: FontAwesomeIcons.mediumM,
                        url: 'https://alirezataghizadeh66.medium.com/'),
                    Container(
                      width: 0.25,
                      height: 25,
                      color: Color(0xffA9AFC3),
                    ),
                    SocialItemWidget(
                        iconData: FontAwesomeIcons.instagram,
                        url: 'https://www.instagram.com/alirezatgz/'),
                  ],
                ),
                DownloadButton(),
              ],
            ),
          ),
        ),
      );
    });
  }
}

class MyCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()..moveTo(size.width / 2, 0);
    path.quadraticBezierTo(0, 0, 0, 150);
    path.quadraticBezierTo(0, 300, 150, 300);
    path.quadraticBezierTo(300, 300, 300, 150);
    path.quadraticBezierTo(300, 0, 150, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
