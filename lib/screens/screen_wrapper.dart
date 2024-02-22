import 'package:flutter/material.dart';
import 'package:gdsc_solution_challenge_2024/screens/history.dart';
import 'package:gdsc_solution_challenge_2024/screens/home_screen.dart';
import 'package:gdsc_solution_challenge_2024/screens/profile_screen.dart';
import 'package:gdsc_solution_challenge_2024/screens/recyoclopedia.dart';
import 'package:gdsc_solution_challenge_2024/screens/scan_screen.dart';
import 'package:gdsc_solution_challenge_2024/utils/constants/colors.dart';

class ScreenWrapper extends StatefulWidget {
  const ScreenWrapper({super.key});

  @override
  State<ScreenWrapper> createState() => _ScreenWrapperState();
}

class _ScreenWrapperState extends State<ScreenWrapper> {
  List<String> items = [
    "My Badges",
    "My Achievements",
  ];

  final List<String> _screenNames = [
    "Home",
    "Recyclopedia",
    "Scan",
    "History",
    "Profile"
  ];

  final List<Widget> _children = [
    const HomeScreen(),
    const RecyclopediaPage(title: "Recyclopedia"),
    const ScanScreen(),
    const HistoryScreen(
      title: "History",
    ),
    const ProfileScreen(),
  ];

  int current = 0;
  int _bottomNavBarCurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (_bottomNavBarCurrentIndex == 2)
          ? AppBar()
          : AppBar(
              toolbarHeight: 100.0,
              title: Container(
                margin: const EdgeInsets.only(left: 10.0),
                child: Text(
                  _screenNames[_bottomNavBarCurrentIndex],
                  style: const TextStyle(
                      fontSize: 23, fontWeight: FontWeight.w600),
                ),
              ),
              actions: [
                Container(
                  margin: const EdgeInsets.only(right: 20.0),
                  child: const Icon(
                    size: 36,
                    Icons.settings,
                    color: Color(0xffFC9A32),
                  ),
                )
              ],
              backgroundColor: const Color(0xff167E6B),
            ),
      body: _children[_bottomNavBarCurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10.0,
        currentIndex: _bottomNavBarCurrentIndex,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: Colors.black, width: 1.0, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(
                Icons.home,
                color: Colors.black,
              ),
            ),
            label: "Home",
            backgroundColor: AppColors.SECONDARY_COLOR,
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: Colors.black, width: 1.0, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(
                Icons.menu_book_rounded,
                color: Colors.black,
              ),
            ),
            label: "Recyclopedia",
            backgroundColor: AppColors.SECONDARY_COLOR,
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: Colors.black, width: 1.0, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(
                Icons.search_rounded,
                color: Colors.black,
              ),
            ),
            label: "Scan",
            backgroundColor: AppColors.SECONDARY_COLOR,
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: Colors.black, width: 1.0, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(
                Icons.history,
                color: Colors.black,
              ),
            ),
            label: "History",
            backgroundColor: AppColors.SECONDARY_COLOR,
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: Colors.black, width: 1.0, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(
                Icons.person,
                color: Colors.black,
              ),
            ),
            label: "Profile",
            backgroundColor: AppColors.SECONDARY_COLOR,
          ),
        ],
        onTap: (index) {
          setState(() {
            _bottomNavBarCurrentIndex = index;
          });
        },
      ),
    );
  }
}
