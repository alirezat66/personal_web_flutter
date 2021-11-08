import 'package:flutter/material.dart';

class MenuItemWidget extends StatefulWidget {
  final IconData iconData;
  final String text;
  final bool isSelected;
  final SelectCallBack onSelect;
  const MenuItemWidget({
    Key? key,
    required this.iconData,
    required this.text,
    required this.isSelected,
    required this.onSelect,
  }) : super(key: key);

  @override
  _MenuItemWidgetState createState() => _MenuItemWidgetState();
}

class _MenuItemWidgetState extends State<MenuItemWidget> {
  bool isHover = false;
  double width = 0;
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
        onTap: widget.onSelect,
        child: Center(
          child: Stack(
            children: [
              AnimatedContainer(
                curve: Curves.ease,
                duration: Duration(milliseconds: 300),
                height: MediaQuery.of(context).size.height * 0.06,
                width: isHover || widget.isSelected ? 230 : 0,
                decoration: BoxDecoration(
                  color: Color(0xff191c26),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: 230,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width:16),
                      Icon(widget.iconData, color: Colors.white),
                      SizedBox(width: 16),
                      Text(
                        widget.text,
                        style: Theme.of(context).textTheme.headline5,
                      )
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
typedef SelectCallBack = void Function();
