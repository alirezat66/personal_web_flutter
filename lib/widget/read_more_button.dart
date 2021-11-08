import 'package:flutter/material.dart';
import 'package:personal_website/widget/about_dialog.dart';

class ReadMoreButton extends StatefulWidget {
  const ReadMoreButton({
    Key? key,
  }) : super(key: key);

  @override
  _ReadMoreButtonState createState() => _ReadMoreButtonState();
}

class _ReadMoreButtonState extends State<ReadMoreButton> {
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
      child: AnimatedSwitcher(
        duration: Duration(milliseconds: 300),
        child: !isHover
            ? ElevatedButton(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  child: Text(
                    'More About Me',
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: Colors.black),
                  ),
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  elevation: 0,
                  side: BorderSide(color: Color(0xffA9AFC3), width: 2),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
              )
            : OutlinedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AboutDialogWidget();
                      });
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Color(0xffA9AFC3), width: 2),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  child: Text(
                    'More About Me',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ),
      ),
    );
  }
}
