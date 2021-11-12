import 'package:iconly/iconly.dart';
import 'package:personal_website/data/model/menu.dart';
import 'package:personal_website/data/model/portfo.dart';

import 'model/article.dart';

class ConstantsValue{
  static MenuList menuList = MenuList(items: [
    Menu(iconData: IconlyBroken.home, isSelected: true, title: 'Home'),
    Menu(iconData: IconlyBroken.profile, isSelected: false, title: 'About'),
    Menu(iconData: IconlyBroken.paper, title: 'Portfolio'),
    Menu(iconData: IconlyBroken.edit_square,  title: 'Blog'),
    Menu(iconData: IconlyBroken.call, title: 'Contact'),
  ]);
  static List<Portfo> portfolioItems = [
    Portfo(projectName: 'Master Tester', projectDesc: 'Collection of physcological tests with online response and analyzes.', firstImage: 'images/master_1.jpeg', secondImage: 'images/master_2.png'),
    Portfo(projectName: 'Xpense', projectDesc: 'An application for store your daily expenses add new categories and ....', firstImage: 'images/xpense_1.png', secondImage: 'images/xpense_2.png'),
    Portfo(projectName: 'MyCareerClue', projectDesc: 'a professional learning platform for selling valuable experiences as well as sharing the most exciting job opportunities worldwide', firstImage: 'images/mycareer_1.png', secondImage: 'images/mycareer_2.png',url:'https://play.google.com/store/apps/details?id=itboost.com.mycareercolu&hl=en&gl=US'),
    Portfo(projectName: 'RemoteDerm', projectDesc: 'Fast, Convenient, Affordable & Secure way in Canada to get help online for your skin concerns.', firstImage: 'images/remote_1.png', secondImage: 'images/remote_2.png',url: 'https://remotederm.ca'),
  ];
  static List<Article> articles = [
    Article(title: 'A good developer', publishDate: 'Nov 2021', url: 'https://alirezataghizadeh66.medium.com/can-i-be-a-good-developer-2a06587ae0cc', image: 'images/publish_1.png', area: 'Software'),
    Article(title: 'Publish Widget', publishDate: 'Jul 2021', url: 'https://alirezataghizadeh66.medium.com/create-a-flutter-package-and-publish-it-in-pub-dev-f376c300ce90', image: 'images/publish_2.png', area: 'Flutter'),
    Article(title: 'Adminestrator permission', publishDate: 'Feb 2021', url: 'https://alirezataghizadeh66.medium.com/show-device-administration-dialog-in-android-67a623eba21d', image: 'images/publish_1.png', area: 'Android'),
  ];
  static double kLargeLeftRightPadding = 65;
  static double kSmallLeftRightPadding = 20;
  static double kMobileItemLeftRightPadding = 40;
  static double kThreeRowSpace = 30;
  static double kLargePaddinBetweenTwoLayout = 60;
  static double kSmallPaddingBetweenTwoLayout = 55;
  static double kTitleAndSubtitlePadding = 25;
  static double kSubtitleAndCaptionPadding = 15;
  static double kTitleAndSubtitleMobile = 8;
  static double kMainTopAndBottomPadding = 120;
  static double kHomeTopButtonPadding = 100;
  static double kHomeConstraintWidth  = 540;
  static double kPersonalInfoLargePadding = 76;
  static double kPersonalInfoSmallPadding = 32;
}