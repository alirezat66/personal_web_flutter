import 'package:flutter/material.dart';
import 'package:personal_website/data/constant_value.dart';
import 'package:personal_website/data/model/portfo.dart';
import 'package:personal_website/helper/responsive_checker.dart';
import 'package:personal_website/widget/portfo_item.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var list = ConstantsValue.portfolioItems;

    return ResponsiveCheker.isDeviceMobileWithContext(context)
        ? PortfolioMobileWidget(list: list)
        : PortfolioDesktopAndTabletWidget(list: list);
  }
}

class PortfolioMobileWidget extends StatelessWidget {
  const PortfolioMobileWidget({
    Key? key,
    required this.list,
  }) : super(key: key);

  final List<Portfo> list;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Color(0xff191c26),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: (ConstantsValue.kSmallLeftRightPadding)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: ConstantsValue.kMainTopAndBottomPadding,
            ),
            Text(
              'Portfolio',
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(
              height: ConstantsValue.kTitleAndSubtitlePadding,
            ),
            Text(
                'In below list, you can see some detail about projects that I participated in it.',
                style: Theme.of(context).textTheme.subtitle1),
            SizedBox(
              height: ConstantsValue.kSmallPaddingBetweenTwoLayout,
            ),
            Center(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: ConstantsValue.kSubtitleAndCaptionPadding,
                  );
                },
                itemBuilder: (context, index) {
                  return PortfoItem(item: list[index]);
                },
                itemCount: list.length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
              ),
            ),
            SizedBox(
              height: ConstantsValue.kMainTopAndBottomPadding,
            ),
          ],
        ),
      ),
    );
  }
}

class PortfolioDesktopAndTabletWidget extends StatelessWidget {
  const PortfolioDesktopAndTabletWidget({
    Key? key,
    required this.list,
  }) : super(key: key);

  final List<Portfo> list;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ResponsiveCheker.isDeviceDesktopWithContext(context)
          ? MediaQuery.of(context).size.width - 320
          : MediaQuery.of(context).size.width,
      color: Color(0xff191c26),
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
              'Portfolio',
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(
              height: ConstantsValue.kTitleAndSubtitlePadding,
            ),
            Text(
                'In below list, you can see some detail about projects that I participated in it.',
                style: Theme.of(context).textTheme.subtitle1),
            SizedBox(
              height: ConstantsValue.kSmallPaddingBetweenTwoLayout,
            ),
            Container(
              constraints: BoxConstraints(
                minHeight: 450,
                maxHeight: 800,
              ),
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: GridView.builder(
                  itemBuilder: (context, index) {
                    return PortfoItem(item: list[index]);
                  },
                  itemCount: list.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,crossAxisSpacing: 16,mainAxisSpacing: 16),
                ),
              ),
            ),
            SizedBox(
              height: 130,
            ),
          ],
        ),
      ),
    );
  }
}
