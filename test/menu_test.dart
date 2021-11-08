import 'package:flutter_test/flutter_test.dart';
import 'package:iconly/iconly.dart';
import 'package:personal_website/data/model/menu.dart';

void main(){
  group("simple tests", simpleTests);
}
void simpleTests() {
  test('selected', () {
    MenuList menuList = MenuList(items: [
      Menu(iconData: IconlyBroken.home, isSelected: true, title: 'Home'),
      Menu(iconData: IconlyBroken.profile, title: 'About'),
      Menu(iconData: IconlyBroken.work, title: 'Service'),
      Menu(iconData: IconlyBroken.paper, title: 'Portfolio'),
      Menu(iconData: IconlyBroken.chat, title: 'Testimonial'),
      Menu(iconData: IconlyBroken.edit_square, title: 'Blog'),
      Menu(iconData: IconlyBroken.call, title: 'Contact'),
    ]);
    
    expect(menuList.items[0].isSelected, true);
    expect(menuList.items[2].isSelected, false);
    menuList.selectIndex(2);
    expect(menuList.items[0].isSelected,false);
    expect(menuList.items[2].isSelected,true);
  });
}
