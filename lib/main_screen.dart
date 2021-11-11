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

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  int selectedIndex = 0;
  ScrollController _scrollController = ScrollController();
  late AnimationController _animationController;

  @override
  void initState() {
    _setListener();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 450));
    super.initState();
  }

  bool isDrawerOpen = false;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      
      return Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              color: Theme.of(context).accentColor,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Visibility(
                    visible:
                        ResponsiveCheker.isDeviceDesktop(constraint, "main"),
                    child: SideBarWidget(
                      onSelectedChange: (index) {
                        setState(() {
                          selectedIndex = index;
                          _scrollController.animateTo(
                              selectedIndex *
                                  MediaQuery.of(context).size.height,
                              duration: Duration(milliseconds: 300),
                              curve: Curves.ease);
                        });
                      },
                      selectedIndex: selectedIndex,
                    ),
                  ),
                  _chosenTab(),
                ],
              ),
            ),
            Visibility(
              visible: ResponsiveCheker.isDeviceDesktop(constraint, "main2"),
              child: AnimatedPositioned(
                  bottom: selectedIndex == 0 ? -62 : 32,
                  right: selectedIndex == 0 ? -62 : 32,
                  duration: Duration(microseconds: 300),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _scrollController.animateTo(0,
                            duration:
                                Duration(milliseconds: selectedIndex * 500),
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
                  )),
            ),
            Visibility(
              visible: !ResponsiveCheker.isDeviceDesktop(constraint, "main3"),
              child: AnimatedPositioned(
                left: drawerPadding,
                top: 0,
                duration: Duration(milliseconds: 400),
                child: SideBarWidget(
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
              ),
            ),
            Visibility(
              visible: !ResponsiveCheker.isDeviceDesktop(constraint, "main4"),
              child: Positioned(
                  bottom: 24,
                  right: 24,
                  child: Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(28)),
                    child: Center(
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              isDrawerOpen = !isDrawerOpen;
                              isDrawerOpen
                                  ? _animationController.forward()
                                  : _animationController.reverse();
                              drawerPadding = drawerPadding == -320 ? 0 : -320;
                            });
                          },
                          icon: AnimatedIcon(
                              color: Colors.black,
                              icon: AnimatedIcons.menu_close,
                              progress: _animationController)),
                    ),
                  )),
            )
          ],
        ),
      );
    });
  }

  double drawerPadding = -320;
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
