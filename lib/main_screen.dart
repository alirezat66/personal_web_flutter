import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:personal_website/helper/responsive_checker.dart';
import 'package:personal_website/screen/about_screen.dart';
import 'package:personal_website/screen/blog_screen.dart';
import 'package:personal_website/screen/contact_screen.dart';
import 'package:personal_website/screen/home_screen.dart';
import 'package:personal_website/screen/portfolio_screen.dart';
import 'package:personal_website/widget/sidebar_widget.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;
  ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    _setListener();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (ResponsiveCheker.getDeviceType(constraint) == DeviceType.DESKTOP ||
          ResponsiveCheker.getDeviceType(constraint) ==
              DeviceType.LARGEDESKTOP) {
        return Stack(
          children: [
            Container(
              color: Theme.of(context).primaryColor,
              child: Row(
                children: [
                  SideBarWidget(
                    onSelectedChange: (index) {
                      setState(() {
                        selectedIndex = index;
                        _scrollController.animateTo(
                            selectedIndex * MediaQuery.of(context).size.height,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.ease);
                      });
                    },
                    selectedIndex: selectedIndex,
                  ),
                  _chosenTab(),
                ],
              ),
            ),
            AnimatedPositioned(
                bottom: selectedIndex == 0 ? -62 : 32,
                right: selectedIndex == 0 ? -62 : 32,
                duration: Duration(microseconds: 300),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _scrollController.animateTo(0,
                          duration: Duration(milliseconds: selectedIndex * 500),
                          curve: Curves.ease);
                      selectedIndex = 0;
                    });
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white),
                    child: Icon(
                      IconlyBroken.arrow_up,
                      size: 24,
                      color: Colors.black,
                    ),
                  ),
                ))
          ],
        );
      } else {
        return Container(
          color: Colors.redAccent,
        );
      }
    });
  }

  Widget _chosenTab() {
    return SingleChildScrollView(
      controller: _scrollController,
      child: Column(
        children: [
          HomeScreen(),
          AboutScreen(),
          PortfolioScreen(),
          BlogScreen(),
          ContactScreen(),
        ],
      ),
    );
  }

  void _setListener() {
    _scrollController.addListener(() {
      if ((_scrollController.position.pixels.round() /
                  MediaQuery.of(context).size.height.round())
              .round() !=
          selectedIndex) {
        setState(() {
          selectedIndex = (_scrollController.position.pixels.round() /
                  MediaQuery.of(context).size.height.round())
              .round();
        });
      }
    });
  }
}
