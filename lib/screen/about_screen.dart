import 'package:flutter/material.dart';
import 'package:personal_website/widget/read_more_button.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fullWidth = MediaQuery.of(context).size.width - 320;
    return Container(
      width: fullWidth,
      color: Color(0xff111419),
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Padding(
                padding: EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 110,
                    ),
                    Text(
                      'About Me',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    SizedBox(height: 50),
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
                    SizedBox(height: 16),
                    Text(
                        "I'm a Flutter Developer with over 11 years of experience. I'm living in Izmir. I code and create mobile applications and releas theme in appstore and google play.",
                        style: Theme.of(context).textTheme.subtitle1),
                    SizedBox(height: 60),
                    Text(
                      "What is my skill level?",
                      style: Theme.of(context)
                          .textTheme
                          .headline3!
                          .copyWith(fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 20),
                    Text(
                        "I devided my skills into 5 groups based on skill's area.",
                        style: Theme.of(context).textTheme.subtitle1),
                    SizedBox(height: 40),
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
                    SizedBox(height: 20),
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
                    SizedBox(height: 20),
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
                    SizedBox(height: 30),
                    ReadMoreButton(),
                    SizedBox(
                      height: 180,
                    ),
                  ],
                ),
              ),
            ),
          ),
          
          Expanded(
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height - 80,
                ),
                Positioned(
                  right: 16,
                  child: Image.asset('images/about.png')),
                Positioned(
                  left: 20,
                  bottom: 58,
                  child: Container(
                    width: fullWidth * 0.2,
                    height: fullWidth * 0.2,
                    decoration: BoxDecoration(
                        color: Color(0xff34495b),
                        borderRadius: BorderRadius.circular(fullWidth * 0.1)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('11+ Years',style:Theme.of(context).textTheme.headline2),
                        Text('Of Experiance',
                            style: Theme.of(context).textTheme.headline3),
                    ],),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
