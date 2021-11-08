import 'package:flutter/material.dart';
import 'package:personal_website/data/model/portfo.dart';
import 'package:universal_html/html.dart' as html;

class PortfoItem extends StatefulWidget {
  final Portfo item;
  const PortfoItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  _PortfoItemState createState() => _PortfoItemState();
}

class _PortfoItemState extends State<PortfoItem> {
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
          html.window.open(widget.item.url, "_blank");
        },
        child: Padding(
          padding: const EdgeInsets.only(right: 32),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              AnimatedOpacity(
                duration: Duration(milliseconds: 300),
                opacity: isHover ? 0 : 1,
                child: Image.asset(
                  widget.item.firstImage,
                  width: 600,
                  height: 600,
                  scale: 1,
                  fit: BoxFit.fill,
                ),
              ),
              AnimatedOpacity(
                duration: Duration(milliseconds: 300),
                opacity: isHover ? 1 : 0,
                child: Image.asset(
                  widget.item.secondImage,
                  width: 600,
                  height: 600,
                  scale: 1,
                  fit: BoxFit.fill,
                ),
              ),
              AnimatedPositioned(
                  bottom: isHover ? 40 : -200,
                  duration: Duration(milliseconds: 500),
                  child: Container(
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(widget.item.projectName,
                              style: Theme.of(context).textTheme.headline3),
                          Text(widget.item.projectDesc,
                              style: Theme.of(context).textTheme.subtitle2),
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
