import 'package:flutter/material.dart';
import 'package:food_recipe_app/models/utils/constans/color_constants.dart';
import 'package:food_recipe_app/view/homescreen/home_screen.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int selectTab = 0;
  List screens = [
    HomeScreen(),
    Container(
      color: ColorConstants.primaryColor,
    ),
    Container(
      color: Colors.black,
    ),
    Container(
      color: Colors.blue,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorConstants.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: ColorConstants.mainWhite,
        ),
      ),
      body: screens[selectTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectTab,
        onTap: (value) {
          setState(() {});
          selectTab = value;
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '',
            activeIcon: Icon(
              Icons.home,
              color: ColorConstants.primaryColor,
            ),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_add_outlined),
              label: '',
              activeIcon:
                  Icon(Icons.bookmark_add, color: ColorConstants.primaryColor)),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none_outlined),
            label: '',
            activeIcon: Icon(Icons.notifications_rounded,
                color: ColorConstants.primaryColor),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: '',
            activeIcon: Icon(Icons.person, color: ColorConstants.primaryColor),
          ),
        ],
      ),
    );
  }
}