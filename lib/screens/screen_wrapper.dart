import 'package:flutter/material.dart';
import 'package:gdsc_solution_challenge_2024/screens/history_screen.dart';
import 'package:gdsc_solution_challenge_2024/screens/home_screen.dart';
import 'package:gdsc_solution_challenge_2024/screens/profile_screen.dart';
import 'package:gdsc_solution_challenge_2024/screens/recyoclopedia.dart';
import 'package:gdsc_solution_challenge_2024/screens/scan_screen.dart';
import 'package:gdsc_solution_challenge_2024/screens/settings_screen.dart';
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
          ? null
          : (_bottomNavBarCurrentIndex == 0)
              ? AppBar(
                  automaticallyImplyLeading: false,
                  toolbarHeight: 150.0,
                  title: SizedBox(
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(75),
                          child: SizedBox(
                            width: 96,
                            height: 96,
                            child: Image.asset(
                                "assets/logos/profile_logo_image.jpg"),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Hi,\nAjay Gouda",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: IconButton(
                        icon: const Icon(
                          size: 36,
                          Icons.settings,
                          color: Color(0xffFC9A32),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const SettingsScreen();
                          }));
                        },
                      ),
                    ),
                  ],
                  backgroundColor: const Color(0xff167E6B),
                )
              : AppBar(
                  automaticallyImplyLeading: false,
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
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: IconButton(
                        icon: const Icon(
                          size: 36,
                          Icons.settings,
                          color: Color(0xffFC9A32),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const SettingsScreen();
                          }));
                        },
                      ),
                    ),
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
                    color: (_bottomNavBarCurrentIndex == 0)
                        ? AppColors.ACCENT_COLOR
                        : Colors.black,
                    width: 1.0,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                Icons.home,
                color: (_bottomNavBarCurrentIndex == 0)
                    ? AppColors.ACCENT_COLOR
                    : Colors.black,
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
                    color: (_bottomNavBarCurrentIndex == 1)
                        ? AppColors.ACCENT_COLOR
                        : Colors.black,
                    width: 1.0,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                Icons.menu_book_rounded,
                color: (_bottomNavBarCurrentIndex == 1)
                    ? AppColors.ACCENT_COLOR
                    : Colors.black,
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
                    color: (_bottomNavBarCurrentIndex == 2)
                        ? AppColors.ACCENT_COLOR
                        : Colors.black,
                    width: 1.0,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                Icons.search_rounded,
                color: (_bottomNavBarCurrentIndex == 2)
                    ? AppColors.ACCENT_COLOR
                    : Colors.black,
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
                    color: (_bottomNavBarCurrentIndex == 3)
                        ? AppColors.ACCENT_COLOR
                        : Colors.black,
                    width: 1.0,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                Icons.history,
                color: (_bottomNavBarCurrentIndex == 3)
                    ? AppColors.ACCENT_COLOR
                    : Colors.black,
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
                    color: (_bottomNavBarCurrentIndex == 4)
                        ? AppColors.ACCENT_COLOR
                        : Colors.black,
                    width: 1.0,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                Icons.person,
                color: (_bottomNavBarCurrentIndex == 4)
                    ? AppColors.ACCENT_COLOR
                    : Colors.black,
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
