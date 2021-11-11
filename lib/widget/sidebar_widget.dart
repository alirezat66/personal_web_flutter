import 'package:flutter/material.dart';
import 'package:personal_website/data/constant_value.dart';
import 'package:personal_website/data/model/menu.dart';
import 'package:personal_website/widget/menu_item_widget.dart';

class SideBarWidget extends StatefulWidget {
  final SelectedChange onSelectedChange;
  final int selectedIndex;
  SideBarWidget(
      {Key? key, required this.onSelectedChange, required this.selectedIndex})
      : super(key: key);

  @override
  _SideBarWidgetState createState() => _SideBarWidgetState();
}

class _SideBarWidgetState extends State<SideBarWidget> {
  MenuList menuList = ConstantsValue.menuList;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: 320,
      height: size.height,
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: size.height * 0.125,
            width: 320,
            child: Row(
              children: [
                SizedBox(
                  width: 70,
                ),
                Image.asset('images/reza.png'),
              ],
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.white.withOpacity(0.4),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 56),
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      MenuItemWidget(
                        iconData: menuList.items[index].iconData,
                        text: menuList.items[index].title,
                        isSelected: index == widget.selectedIndex,
                        onSelect: () {
                          menuList = menuList.selectIndex(index);
                          setState(() {});
                          widget.onSelectedChange(index);
                        },
                      ),
                      SizedBox(
                        height: 16,
                      ),
                    ],
                  );
                },
                itemCount: menuList.items.length,
              ),
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.white.withOpacity(0.4),
          ),
          Container(
            height: size.height * 0.145,
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(size.height * 0.15 / 4),
                    child: Image.asset(
                      'images/profile.jpeg',
                      width: size.height * 0.15 / 2,
                      height: size.height * 0.15 / 2,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Reza',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      Text('alirezataghizadeh66@gmail.com',
                          style: Theme.of(context).textTheme.caption),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

typedef SelectedChange = void Function(int);
