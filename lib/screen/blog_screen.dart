import 'package:flutter/material.dart';
import 'package:personal_website/data/constant_value.dart';
import 'package:personal_website/helper/responsive_checker.dart';
import 'package:personal_website/widget/blog_item.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var list = ConstantsValue.articles;
    return Container(
      width: ResponsiveCheker.isDeviceDesktopWithContext(context)
          ? MediaQuery.of(context).size.width - 320
          : MediaQuery.of(context).size.width,
      color: Color(0xff111419),
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
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
                constraints: BoxConstraints(maxHeight: 800,minHeight:0),
                child: GridView.builder(
                  itemBuilder: (context, index) {
                    return BlogItem(item: list[index]);
                  },
                  itemCount: list.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,childAspectRatio: 2/2.4),
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
