import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ContactWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final double width;
  const ContactWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.description,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
          color: Color(0xff111419), borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
        child: Row(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: Color(0xff34495E)),
              child: Icon(
                icon,
                size: 35,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline3,
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                    width: width / 1.8,
                    child: AutoSizeText(description,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.subtitle1)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
