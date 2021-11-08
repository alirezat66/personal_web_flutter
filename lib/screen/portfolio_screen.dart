import 'package:flutter/material.dart';
import 'package:personal_website/data/constant_value.dart';
import 'package:personal_website/widget/portfo_item.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var list = ConstantsValue.portfolioItems;
    return Container(
      width: MediaQuery.of(context).size.width - 320,
      color: Color(0xff191c26),
      child: Padding(
        padding: EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 110,
            ),
            Text(
              'Portfolio',
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
                'In below list, you can see some detail about projects that I participated in it.',
                style: Theme.of(context).textTheme.subtitle1),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 600,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return PortfoItem(item: list[index]);
                },
                itemCount: list.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
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


