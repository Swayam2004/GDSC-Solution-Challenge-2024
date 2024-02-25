import 'package:flutter/material.dart';
import 'package:gdsc_solution_challenge_2024/utils/constants/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> items = [
    "My Badges",
    "My Achievements",
  ];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5.0, left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Text(
                      "Blogs and Articles",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 18.0),
                    ),
                  ),
                  Container(
                    height: 148,
                    width: 450,
                    decoration: BoxDecoration(
                      color: AppColors.PRIMARY_COLOR,
                      border: Border.all(
                          color: AppColors.TEXT_COLOR_DARK,
                          width: 1.0,
                          style: BorderStyle.solid),
                    ),
                    child: const Row(
                      children: [],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0, left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Text(
                      "Collection Points Near You",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 18.0),
                    ),
                  ),
                  Container(
                    height: 148,
                    width: 450,
                    decoration: BoxDecoration(
                      color: AppColors.PRIMARY_COLOR,
                      border: Border.all(
                          color: AppColors.TEXT_COLOR_DARK,
                          width: 1.0,
                          style: BorderStyle.solid),
                    ),
                    child: const Row(
                      children: [],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0, left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Text(
                      "Streak Calender",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 18.0),
                    ),
                  ),
                  Container(
                    height: 148,
                    width: 450,
                    decoration: BoxDecoration(
                      color: AppColors.PRIMARY_COLOR,
                      border: Border.all(
                          color: AppColors.TEXT_COLOR_DARK,
                          width: 1.0,
                          style: BorderStyle.solid),
                    ),
                    child: const Row(
                      children: [],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
