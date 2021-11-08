import 'package:flutter/material.dart';
import 'package:universal_html/html.dart';

class DownloadButton extends StatefulWidget {
  final bool isLeftCenter ;
  const DownloadButton({
    Key? key, this.isLeftCenter = false,
  }) : super(key: key);

  @override
  _DownloadButtonState createState() => _DownloadButtonState();
}

class _DownloadButtonState extends State<DownloadButton> {
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
      child: Stack(
        alignment: widget.isLeftCenter? Alignment.centerLeft : Alignment.bottomCenter,
        children: [
          Container(width: 300, height: 90),
          AnimatedPositioned(
            bottom: isHover ? 10 : 0,
            duration: Duration(microseconds: 300),
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              child: isHover
                  ? ElevatedButton(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 32, vertical: 12),
                        child: Text(
                          'Download CV',
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(color: Colors.black),
                        ),
                      ),
                      onPressed: () {
                        downloadFile("/lib/data/files/cv.pdf");
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        elevation: 0,
                        side: BorderSide(color: Color(0xffA9AFC3), width: 2),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                      ),
                    )
                  : OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Color(0xffA9AFC3), width: 2),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                        child: Text(
                          'Download CV',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }

  downloadFile(url) {
    AnchorElement anchorElement = new AnchorElement(href: url);
    anchorElement.download = "Reza Taghizadeh CV";
    anchorElement.click();
  }
}
