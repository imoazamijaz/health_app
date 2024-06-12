import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:global_bottom_navigation_bar/global_bottom_navigation_bar.dart';
import 'package:health_app/bottom_navigation_bar/profile.dart';
import 'package:health_app/bottom_navigation_bar/recipes.dart';
import 'package:health_app/bottom_navigation_bar/shop.dart';
import 'feed.dart';
import 'home/home.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

const color = Color(0xFFF8F8F8);

class _BottomNavBarState extends State<BottomNavBar>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return ScaffoldGlobalBottomNavigation(
      backgroundColor: Colors.white,
      listOfChild: const [
        Home(),
        Feed(),
        Recipe(),
        Shop(),
        Profile(),
      ],
      listOfBottomNavigationItem: buildBottomNavigationItemList(),
    );
  }

  List<BottomNavigationItem> buildBottomNavigationItemList() => [
        BottomNavigationItem(
            activeIcon: SvgPicture.asset('images/activeHome.svg'),
            inActiveIcon: SvgPicture.asset('images/inactiveHome.svg'),
            title: 'Home',
            vSync: this,
            color: color),
        BottomNavigationItem(
          activeIcon: SvgPicture.asset('images/activeFeed.svg'),
          inActiveIcon: SvgPicture.asset('images/inactiveFeed.svg'),
          title: 'Feed',
          vSync: this,
          color: color,
        ),
        BottomNavigationItem(
            activeIcon: SvgPicture.asset('images/activeRecipe.svg'),
            inActiveIcon: SvgPicture.asset('images/inactiveRecipe.svg'),
            title: 'Recipe',
            vSync: this,
            color: color),
        BottomNavigationItem(
            activeIcon: SvgPicture.asset('images/activeShop.svg'),
            inActiveIcon: SvgPicture.asset('images/inactiveShop.svg'),
            title: 'Shop',
            vSync: this,
            color: color),
        BottomNavigationItem(
            activeIcon: SvgPicture.asset('images/activeProfile.svg'),
            inActiveIcon: SvgPicture.asset('images/inactiveProfile.svg'),
            title: 'Profile',
            vSync: this,
            color: color),
      ];
}
