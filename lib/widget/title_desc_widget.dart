import 'package:flutter/material.dart';

class TitleDescWidget extends StatelessWidget {
  final String title, desc;
  const TitleDescWidget({Key? key, required this.title, required this.desc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            style: Theme.of(context).textTheme.subtitle2,
            children: <TextSpan>[
          TextSpan(text: title),
          TextSpan(
            text: ' $desc',
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(color: Colors.white),
          ),
        ]));
  }
}
