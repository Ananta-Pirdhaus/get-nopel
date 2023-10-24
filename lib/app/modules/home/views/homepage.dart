import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nopel_get/app/modules/home/controllers/home_controller.dart';
import 'package:nopel_get/app/modules/home/views/home.dart';
import 'package:nopel_get/app/modules/home/views/inbox.dart';
import 'package:nopel_get/app/modules/home/views/plus.dart';
import 'package:nopel_get/app/modules/home/views/profile.dart';
import 'package:nopel_get/app/modules/home/views/search.dart';
import 'package:nopel_get/widget/bottom_navigation_bar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController homeController = Get.find(); // Mencari instance HomeController

  int _selectedIndex = 0;

  final List<Widget> _pages = [
    UserHomePage(),
    UserSearchPage(),
    UserPlusPage(),
    UserInboxPage(),
    UserProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBarWidget(
        selectedIndex: _selectedIndex,
        onItemSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });

          // Panggil metode controller berdasarkan index yang dipilih
          switch (index) {
            case 0:
              homeController.navigateToUserHomePage();
              break;
            case 1:
              homeController.navigateToUserSearchPage();
              break;
            case 2:
              homeController.navigateToUserPlusPage();
              break;
            case 3:
              homeController.navigateToUserInboxPage();
              break;
            case 4:
              homeController.navigateToUserProfilePage();
              break;
          }
        },
      ),
    );
  }
}
