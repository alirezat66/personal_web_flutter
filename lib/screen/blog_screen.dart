import 'package:flutter/material.dart';
import 'package:personal_website/data/constant_value.dart';
import 'package:personal_website/widget/blog_item.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var list = ConstantsValue.articles;
    return Container(
      width: MediaQuery.of(context).size.width - 320,
      color: Color(0xff111419),
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 110,
            ),
            Text(
              'Blog',
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(height: 50),
            Text(
                'Here you can read some of my published articles about\nsoftware engineering or mobile developing.',
                style: Theme.of(context).textTheme.subtitle1),
            SizedBox(height: 50),
            SizedBox(
                height: 550,
                child: Center(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return BlogItem(item: list[index]);
                    },
                    itemCount: list.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                  ),
                )),
            SizedBox(
              height: 110,
            ),
          ],
        ),
      ),
    );
  }
}

