import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconly/iconly.dart';
import 'package:personal_website/widget/download_button.dart';
import 'package:personal_website/widget/title_desc_widget.dart';

extension TextStyleX on TextStyle {
  /// A method to underline a text with a customizable [distance] between the text
  /// and underline. The [color], [thickness] and [style] can be set
  /// as the decorations of a [TextStyle].
  TextStyle underlined({
    Color? color,
    double distance = 1,
    double thickness = 1,
    TextDecorationStyle style = TextDecorationStyle.dashed,
  }) {
    return copyWith(
      shadows: [
        Shadow(
          color: this.color ?? Colors.black,
          offset: Offset(0, -distance),
        )
      ],
      color: Colors.transparent,
      decoration: TextDecoration.underline,
      decorationThickness: thickness,
      decorationColor: color ?? this.color,
      decorationStyle: style,
    );
  }
}

class AboutDialogWidget extends StatefulWidget {
  AboutDialogWidget({Key? key}) : super(key: key);

  @override
  _AboutDialogWidgetState createState() => _AboutDialogWidgetState();
}

class _AboutDialogWidgetState extends State<AboutDialogWidget> {
  @override
  Widget build(BuildContext context) {
    double dialogWidth = MediaQuery.of(context).size.width * 3 / 4;
    final myStyle = Theme.of(context).textTheme.headline2!.copyWith(
          fontSize: 25,
          fontWeight: FontWeight.w700,
          color: Colors.white,
          decoration: TextDecoration.underline,
          decorationStyle: TextDecorationStyle.dashed,
        );

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 3 / 4,
            height: MediaQuery.of(context).size.height * 3 / 4,
          ),
          Positioned(
            top: 20,
            child: Container(
              width: dialogWidth - 40,
              height: MediaQuery.of(context).size.height * 3 / 4 - 40,
              color: Color(0xff13161f),
              child: SingleChildScrollView(
                child: Scrollbar(
                    isAlwaysShown: true,
                    showTrackOnHover: true,
                    hoverThickness: 30.0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 60),
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Personal Info',
                                      style: myStyle.underlined(distance: 20),
                                    ),
                                    SizedBox(height: 20),
                                    Row(
                                      children: [
                                        Expanded(
                                            child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            TitleDescWidget(
                                              title: 'First Name:',
                                              desc: 'Reza',
                                            ),
                                            SizedBox(
                                              height: 30,
                                            ),
                                            TitleDescWidget(
                                              title: 'BirthDay:',
                                              desc: '11/14/1987',
                                            ),
                                            SizedBox(
                                              height: 30,
                                            ),
                                            TitleDescWidget(
                                              title: 'Education:',
                                              desc: 'MSc',
                                            ),
                                            SizedBox(
                                              height: 30,
                                            ),
                                            TitleDescWidget(
                                              title: 'Phone:',
                                              desc: '+905366526420',
                                            ),
                                            SizedBox(
                                              height: 30,
                                            ),
                                            TitleDescWidget(
                                              title: 'Skype:',
                                              desc: 'alireza3.taghizadeh',
                                            ),
                                          ],
                                        )),
                                        Expanded(
                                            child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            TitleDescWidget(
                                              title: 'Last Name:',
                                              desc: 'Taghizadeh',
                                            ),
                                            SizedBox(
                                              height: 30,
                                            ),
                                            TitleDescWidget(
                                              title: 'Nationality:',
                                              desc: 'Iran',
                                            ),
                                            SizedBox(
                                              height: 30,
                                            ),
                                            TitleDescWidget(
                                              title: 'Living place:',
                                              desc: 'Turkey-Izmir',
                                            ),
                                            SizedBox(
                                              height: 30,
                                            ),
                                            TitleDescWidget(
                                              title: 'github:',
                                              desc: 'alirezat66',
                                            ),
                                            SizedBox(
                                              height: 30,
                                            ),
                                            TitleDescWidget(
                                              title: 'Languages:',
                                              desc: 'English, Turkish',
                                            ),
                                          ],
                                        ))
                                      ],
                                    ),
                                    SizedBox(height: 20),
                                    Container(
                                        child: DownloadButton(
                                      isLeftCenter: true,
                                    ))
                                  ],
                                )),
                                Expanded(
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                      Text(
                                        'Achievements',
                                        style: myStyle.underlined(distance: 20),
                                      ),
                                      SizedBox(height: 20),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(right: 16),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                    border: Border.all(
                                                      color: Color(0xff33495E),
                                                      width: 1,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            20),
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              '06',
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .headline2!
                                                                  .copyWith(
                                                                      fontSize:
                                                                          40,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700),
                                                            ),
                                                            Text(
                                                              ' +',
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .headline2!
                                                                  .copyWith(
                                                                      fontSize:
                                                                          30,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400),
                                                            )
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 18,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Container(
                                                              height: 1,
                                                              width: 40,
                                                              color: Color(
                                                                  0xff999999),
                                                            ),
                                                            SizedBox(
                                                              width: 16,
                                                            ),
                                                            Text(
                                                                'years of\nExperience',
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .subtitle1!
                                                                    .copyWith(
                                                                        fontSize:
                                                                            16))
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                )),
                                          ),
                                          Expanded(
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 16),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                    border: Border.all(
                                                      color: Color(0xff33495E),
                                                      width: 1,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            20),
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              '50',
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .headline2!
                                                                  .copyWith(
                                                                      fontSize:
                                                                          40,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700),
                                                            ),
                                                            Text(
                                                              ' +',
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .headline2!
                                                                  .copyWith(
                                                                      fontSize:
                                                                          30,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400),
                                                            )
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 18,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Container(
                                                              height: 1,
                                                              width: 40,
                                                              color: Color(
                                                                  0xff999999),
                                                            ),
                                                            SizedBox(
                                                              width: 16,
                                                            ),
                                                            Text(
                                                                'Completed\nProjects',
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .subtitle1!
                                                                    .copyWith(
                                                                        fontSize:
                                                                            16))
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                )),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 32),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(right: 16),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                    border: Border.all(
                                                      color: Color(0xff33495E),
                                                      width: 1,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            20),
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              '30',
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .headline2!
                                                                  .copyWith(
                                                                      fontSize:
                                                                          40,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700),
                                                            ),
                                                            Text(
                                                              ' +',
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .headline2!
                                                                  .copyWith(
                                                                      fontSize:
                                                                          30,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400),
                                                            )
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 18,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Container(
                                                              height: 1,
                                                              width: 40,
                                                              color: Color(
                                                                  0xff999999),
                                                            ),
                                                            SizedBox(
                                                              width: 16,
                                                            ),
                                                            Text(
                                                                'Released\nApplication',
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .subtitle1!
                                                                    .copyWith(
                                                                        fontSize:
                                                                            16))
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                )),
                                          ),
                                          Expanded(
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 16),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                    border: Border.all(
                                                      color: Color(0xff33495E),
                                                      width: 1,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            20),
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              '70',
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .headline2!
                                                                  .copyWith(
                                                                      fontSize:
                                                                          40,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700),
                                                            ),
                                                            Text(
                                                              ' +',
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .headline2!
                                                                  .copyWith(
                                                                      fontSize:
                                                                          30,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400),
                                                            )
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 18,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Container(
                                                              height: 1,
                                                              width: 40,
                                                              color: Color(
                                                                  0xff999999),
                                                            ),
                                                            SizedBox(
                                                              width: 16,
                                                            ),
                                                            Text(
                                                                'Happy\nCustomers',
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .subtitle1!
                                                                    .copyWith(
                                                                        fontSize:
                                                                            16))
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                )),
                                          ),
                                        ],
                                      ),
                                    ])),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 80,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Experience',
                                          style:
                                              myStyle.underlined(distance: 20),
                                        ),
                                        SizedBox(height: 20),
                                        ExperienceWidget(
                                          isExperience: true,
                                          startYear: '2021',
                                          endYear: 'present',
                                          title: 'Flutter Developer',
                                          place: 'Slowbud',
                                          desc:
                                              'We work on a financial and a psychology aplication. Our focus was on advertising in application.',
                                        ),
                                        SizedBox(height: 40),
                                        ExperienceWidget(
                                          isExperience: true,
                                          startYear: '2019',
                                          endYear: '2021',
                                          title: 'Flutter Developer',
                                          place: 'Sana Gostar Sepanta',
                                          desc:
                                              'Create a game application based on educational questions. I work in this company as head of mobile team. we use bloc architecture and socket programming for game part.',
                                        ),
                                        SizedBox(height: 40),
                                        ExperienceWidget(
                                          isExperience: true,
                                          startYear: '2018',
                                          endYear: '2019',
                                          title: 'Senior Mobile Developer',
                                          place: 'IT boosts Australia',
                                          desc:
                                              'Develope Android and Ios application, using realm database for local storage. using MVP architecture for android and MVC for Ios. Write a cusomize HTML parser',
                                        ),
                                        SizedBox(height: 40),
                                      ]),
                                ),
                                Expanded(
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                      Text(
                                        'Education',
                                        style: myStyle.underlined(distance: 20),
                                      ),
                                      SizedBox(height: 20),
                                      ExperienceWidget(
                                        isExperience: false,
                                        startYear: '2013',
                                        endYear: '2015',
                                        title: 'Master Degree',
                                        place: 'Qazvin azad',
                                        desc:
                                            'I graduated in software engineering after working on Question answering system as a final thesis.',
                                      ),
                                      SizedBox(height: 40),
                                      ExperienceWidget(
                                        isExperience: false,
                                        startYear: '2008',
                                        endYear: '2012',
                                        title: 'Bachelor of science',
                                        place: 'Payamnoor Ahwaz',
                                        desc:
                                            'Graduated in Software engineering.',
                                      ),
                                      SizedBox(height: 40),
                                    ])),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: FaIcon(FontAwesomeIcons.timesCircle,
                  size: 50, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

class ExperienceWidget extends StatelessWidget {
  final bool isExperience;
  final String startYear;
  final String endYear;
  final String title;
  final String place;
  final String desc;
  const ExperienceWidget({
    Key? key,
    required this.isExperience,
    required this.startYear,
    required this.endYear,
    required this.title,
    required this.place,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff34495E),
              ),
              child: Icon(
                isExperience ? IconlyBroken.work : IconlyBroken.document,
                size: 24,
                color: Colors.white,
              ),
            ),
            Container(width: 1, height: 90, color: Color(0xff33495E))
          ],
        ),
        SizedBox(width: 16),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff33495E),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Text('$startYear - $endYear',
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontSize: 12)),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text('$title', style: Theme.of(context).textTheme.headline4),
                  Text(' - ',
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(color: Color(0xffD5D5D5))),
                  Text('$place',
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(color: Color(0xffD5D5D5))),
                ],
              ),
              SizedBox(height: 12),
              Text('$desc',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(fontSize: 15))
            ],
          ),
        )
      ],
    );
  }
}
