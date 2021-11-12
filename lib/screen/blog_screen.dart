import 'package:flutter/material.dart';
import 'package:personal_website/data/constant_value.dart';
import 'package:personal_website/data/model/article.dart';
import 'package:personal_website/helper/responsive_checker.dart';
import 'package:personal_website/widget/blog_item.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var list = ConstantsValue.articles;
    return ResponsiveCheker.isDeviceMobileWithContext(context)
        ? BlogMobileWidget(
            list: list,
          )
        : BlogDesktopAndTabletWidget(list: list);
  }
}

class BlogMobileWidget extends StatelessWidget {
  const BlogMobileWidget({
    Key? key,
    required this.list,
  }) : super(key: key);

  final List<Article> list;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
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
              'Blog',
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(height: ConstantsValue.kTitleAndSubtitlePadding),
            Text(
                'Here you can read some of my published articles about\nsoftware engineering or mobile developing.',
                style: Theme.of(context).textTheme.subtitle1),
            SizedBox(height: ConstantsValue.kLargePaddinBetweenTwoLayout),
            Padding(
              padding:  EdgeInsets.all(ConstantsValue.kMobileItemLeftRightPadding),
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return BlogItem(item: list[index]);
                },
                itemCount: list.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                      height: ConstantsValue.kSubtitleAndCaptionPadding);
                },
              ),
            ),
            SizedBox(
              height: ConstantsValue.kTitleAndSubtitlePadding,
            ),
          ],
        ),
      ),
    );
  }
}

class BlogDesktopAndTabletWidget extends StatelessWidget {
  const BlogDesktopAndTabletWidget({
    Key? key,
    required this.list,
  }) : super(key: key);

  final List<Article> list;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ResponsiveCheker.isDeviceDesktopWithContext(context)
          ? MediaQuery.of(context).size.width - 320
          : MediaQuery.of(context).size.width,
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
              'Blog',
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(height: ConstantsValue.kTitleAndSubtitlePadding),
            Text(
                'Here you can read some of my published articles about\nsoftware engineering or mobile developing.',
                style: Theme.of(context).textTheme.subtitle1),
            SizedBox(height: ConstantsValue.kLargePaddinBetweenTwoLayout),
            Container(
                constraints: BoxConstraints(maxHeight: 800, minHeight: 0),
                child: GridView.builder(
                  itemBuilder: (context, index) {
                    return BlogItem(item: list[index]);
                  },
                  itemCount: list.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 16,
                      childAspectRatio: 2 / 2.72),
                )),
            SizedBox(
              height: ConstantsValue.kMainTopAndBottomPadding,
            ),
          ],
        ),
      ),
    );
  }
}
