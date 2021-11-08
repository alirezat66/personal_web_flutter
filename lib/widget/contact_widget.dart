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
      height: 180,
      color: Color(0xff111419),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
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
                Text(description, style: Theme.of(context).textTheme.subtitle1),
              ],
            )
          ],
        ),
      ),
    );
  }
}
