import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/data/model/article.dart';
import 'package:universal_html/html.dart' as html;

class BlogItem extends StatefulWidget {
  final Article item;
  const BlogItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  _BlogItemState createState() => _BlogItemState();
}

class _BlogItemState extends State<BlogItem> with TickerProviderStateMixin {
  bool isHover = false;
  double scale = 1;
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 300),
    vsync: this,
  );

  late final _animation =
      Tween<double>(begin: 1.0, end: 2.0).animate(_controller);
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) {
        setState(() {
          isHover = true;
          scale = 2.0;
          _controller.forward();
        });
      },
      onExit: (event) {
        setState(() {
          isHover = false;
          scale = 1;
          _controller.reverse();
        });
      },
      child: GestureDetector(
        onTap: () {
          html.window.open(widget.item.url, "_blank");
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              child: AspectRatio(
                aspectRatio: 1,
                child: ScaleTransition(
                  scale: _animation,
                  child: Image.asset(
                    widget.item.image,
                  ),
                ),
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            SizedBox(height: 20),
            Text('${widget.item.publishDate} - ${widget.item.area}',
                style: Theme.of(context).textTheme.subtitle2),
            SizedBox(height: 8),
            AutoSizeText(
              '${widget.item.title}',
              maxLines: 1,
              style: Theme.of(context)
                  .textTheme
                  .headline3!
                  .copyWith(fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }
}
