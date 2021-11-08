import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:universal_html/html.dart' as html;

class SocialItemWidget extends StatefulWidget {
  final IconData iconData;
  final String url;
  const SocialItemWidget({
    Key? key,
    required this.iconData,
    required this.url,
  }) : super(key: key);

  @override
  _SocialItemWidgetState createState() => _SocialItemWidgetState();
}

class _SocialItemWidgetState extends State<SocialItemWidget> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) {
        setState(() {
          isHover = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHover = false;
        });
      },
      child: GestureDetector(
        onTap: () {
          html.window.open(widget.url, "_blank");
        },
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: 50,
              height: 50,
            ),
            AnimatedPositioned(
              curve: Curves.ease,
              duration: Duration(milliseconds: 300),
              bottom: isHover ? 10 : 0,
              child: FaIcon(widget.iconData,
                  color: isHover ? Colors.white : Color(0xffA9AFC3)),
            ),
          ],
        ),
      ),
    );
  }
}
