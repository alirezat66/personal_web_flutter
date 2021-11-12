import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/data/constant_value.dart';
import 'package:personal_website/helper/responsive_checker.dart';
import 'package:personal_website/widget/read_more_button.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fullWidth = 0;
    return LayoutBuilder(builder: (context, constraints) {
      if (ResponsiveCheker.isDeviceDesktopWithContext(context)) {
        fullWidth = MediaQuery.of(context).size.width - 320;
      } else {
        fullWidth = MediaQuery.of(context).size.width;
      }
      return ResponsiveCheker.isDeviceMobileWithContext(context)
          ? AboutMobileWidget(
              fullWidth: fullWidth,
            )
          : AboutDesktopAndTabletWidget(fullWidth: fullWidth);
    });
  }
}

class AboutDesktopAndTabletWidget extends StatelessWidget {
  const AboutDesktopAndTabletWidget({
    Key? key,
    required this.fullWidth,
  }) : super(key: key);

  final double fullWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: fullWidth,
      color: Color(0xff111419),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: (ResponsiveCheker.isDeviceDesktopWithContext(context)
                ? ConstantsValue.kLargeLeftRightPadding
                : ConstantsValue.kSmallLeftRightPadding)),
        child: Row(
          children: [
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: ConstantsValue.kMainTopAndBottomPadding,
                    ),
                    Text(
                      'About Me',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    SizedBox(
                        height: ConstantsValue.kLargePaddinBetweenTwoLayout),
                    RichText(
                      text: TextSpan(
                        // Note: Styles for TextSpans must be explicitly defined.
                        // Child text spans will inherit styles from parent
                        style: Theme.of(context)
                            .textTheme
                            .headline3!
                            .copyWith(fontWeight: FontWeight.w400),
                        children: <TextSpan>[
                          new TextSpan(text: "Hi, I'm"),
                          new TextSpan(
                              text: ' Reza Taghizadeh',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline3!
                                  .copyWith(fontWeight: FontWeight.w700)),
                        ],
                      ),
                    ),
                    SizedBox(height: ConstantsValue.kTitleAndSubtitlePadding),
                    Text(
                        "I'm a Flutter Developer with over 11 years of experience. I'm living in Izmir. I code and create mobile applications and releas theme in appstore and google play.",
                        style: Theme.of(context).textTheme.subtitle1),
                    SizedBox(
                        height: ConstantsValue.kLargePaddinBetweenTwoLayout),
                    Text(
                      "What is my skill level?",
                      style: Theme.of(context)
                          .textTheme
                          .headline3!
                          .copyWith(fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: ConstantsValue.kTitleAndSubtitlePadding),
                    Text(
                        "I devided my skills into 5 groups based on skill's area.",
                        style: Theme.of(context).textTheme.subtitle1),
                    SizedBox(
                        height: ConstantsValue.kSmallPaddingBetweenTwoLayout),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Languages:',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4!
                                      .copyWith(fontWeight: FontWeight.w700)),
                              SizedBox(height: 8),
                              Text(
                                  "Flutter & Dart(Senior), Android Java(Senior), Swift, Android Kotlin, node.js, C#",
                                  style: Theme.of(context).textTheme.subtitle1)
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Thecnologies:',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4!
                                      .copyWith(fontWeight: FontWeight.w700)),
                              SizedBox(height: 8),
                              Text(
                                  "Git, Rx, Design Patterns, Restful, SOAP, Socket programming, Firebase",
                                  style: Theme.of(context).textTheme.subtitle1)
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: ConstantsValue.kTitleAndSubtitlePadding),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Coding Architecture:',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4!
                                      .copyWith(fontWeight: FontWeight.w700)),
                              SizedBox(height: 8),
                              Text("Bloc(Senior), MVP, MVVM, MVC",
                                  style: Theme.of(context).textTheme.subtitle1)
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Database ORM:',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4!
                                      .copyWith(fontWeight: FontWeight.w700)),
                              SizedBox(height: 8),
                              Text("SQfentity, Hive, Realm, Room",
                                  style: Theme.of(context).textTheme.subtitle1)
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: ConstantsValue.kTitleAndSubtitlePadding),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Management Tools:',
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(fontWeight: FontWeight.w700)),
                        SizedBox(height: 8),
                        Text("Trello, Jira, Taiga, Notion",
                            style: Theme.of(context).textTheme.subtitle1)
                      ],
                    ),
                    SizedBox(height: ConstantsValue.kPersonalInfoSmallPadding),
                    ReadMoreButton(),
                    SizedBox(
                      height: ConstantsValue.kMainTopAndBottomPadding,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'images/about.png',
                        width: fullWidth / 2.5,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    bottom: 0,
                    child: Container(
                      width: fullWidth * 0.2,
                      height: fullWidth * 0.2,
                      decoration: BoxDecoration(
                          color: Color(0xff34495b),
                          borderRadius: BorderRadius.circular(fullWidth * 0.1)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: AutoSizeText('11+ Years',
                                maxLines: 1,
                                maxFontSize: 45,
                                style: Theme.of(context).textTheme.headline2),
                          ),
                          Text('Of Experiance',
                              style: Theme.of(context).textTheme.headline3),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AboutMobileWidget extends StatelessWidget {
  const AboutMobileWidget({
    Key? key,
    required this.fullWidth,
  }) : super(key: key);

  final double fullWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: fullWidth,
      color: Color(0xff111419),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: (ResponsiveCheker.isDeviceDesktopWithContext(context)
                ? ConstantsValue.kLargeLeftRightPadding
                : ConstantsValue.kSmallLeftRightPadding)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: ConstantsValue.kMainTopAndBottomPadding,
            ),
            Text(
              'About Me',
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(height: ConstantsValue.kLargePaddinBetweenTwoLayout),
            RichText(
              text: TextSpan(
                // Note: Styles for TextSpans must be explicitly defined.
                // Child text spans will inherit styles from parent
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(fontWeight: FontWeight.w400),
                children: <TextSpan>[
                  new TextSpan(text: "Hi, I'm"),
                  new TextSpan(
                      text: ' Reza Taghizadeh',
                      style: Theme.of(context)
                          .textTheme
                          .headline3!
                          .copyWith(fontWeight: FontWeight.w700)),
                ],
              ),
            ),
            SizedBox(height: ConstantsValue.kTitleAndSubtitlePadding),
            Text(
                "I'm a Flutter Developer with over 11 years of experience. I'm living in Izmir. I code and create mobile applications and releas theme in appstore and google play.",
                style: Theme.of(context).textTheme.subtitle1),
            SizedBox(height: ConstantsValue.kSmallPaddingBetweenTwoLayout),
            Text('Languages:',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontWeight: FontWeight.w700)),
            SizedBox(height: ConstantsValue.kTitleAndSubtitleMobile),
            Text(
                "Flutter & Dart(Senior), Android Java(Senior), Swift, Android Kotlin, node.js, C#",
                style: Theme.of(context).textTheme.subtitle1),
            SizedBox(height: ConstantsValue.kTitleAndSubtitlePadding),
            Text('Thecnologies:',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontWeight: FontWeight.w700)),
            SizedBox(height: ConstantsValue.kTitleAndSubtitleMobile),
            Text(
                "Git, Rx, Design Patterns, Restful, SOAP, Socket programming, Firebase",
                style: Theme.of(context).textTheme.subtitle1),
            SizedBox(height: ConstantsValue.kTitleAndSubtitlePadding),
            Text('Coding Architecture:',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontWeight: FontWeight.w700)),
            SizedBox(height: ConstantsValue.kTitleAndSubtitleMobile),
            Text("Bloc(Senior), MVP, MVVM, MVC",
                style: Theme.of(context).textTheme.subtitle1),
            SizedBox(height: ConstantsValue.kTitleAndSubtitlePadding),
            Text('Database ORM:',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontWeight: FontWeight.w700)),
            SizedBox(height: ConstantsValue.kTitleAndSubtitleMobile),
            Text("SQfentity, Hive, Realm, Room",
                style: Theme.of(context).textTheme.subtitle1),
            SizedBox(height: ConstantsValue.kTitleAndSubtitlePadding),
            Text('Management Tools:',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontWeight: FontWeight.w700)),
            SizedBox(height: ConstantsValue.kTitleAndSubtitleMobile),
            Text("Trello, Jira, Taiga, Notion",
                style: Theme.of(context).textTheme.subtitle1),
            SizedBox(height: ConstantsValue.kPersonalInfoSmallPadding),
            ReadMoreButton(),
            SizedBox(
              height: ConstantsValue.kMainTopAndBottomPadding,
            ),
          ],
        ),
      ),
    );
  }
}
