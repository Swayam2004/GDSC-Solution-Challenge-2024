import 'package:flutter/material.dart';
import 'package:gdsc_solution_challenge_2024/utils/constants/colors.dart';
import 'package:gdsc_solution_challenge_2024/widgets/home_page_info_container.dart';
import 'package:gdsc_solution_challenge_2024/widgets/home_page_streak_calender.dart';

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

  List<String> blogAndArticles = [
    "Paper",
    "Plants",
    "Soil",
  ];

  List<String> blogAndArticlesLinks = [
    "assets/images/papers.jpg",
    "assets/images/plants.jpg",
    "assets/images/soil.jpg",
  ];

  List<String> collectionPoints = [
    "Point A",
    "Point B",
    "Point C",
  ];

  List<String> collectionPointsLinks = [
    "assets/images/location_1.jpg",
    "assets/images/location_2.jpg",
    "assets/images/location_3.jpg",
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
                    height: 200,
                    width: 450,
                    decoration: BoxDecoration(
                      color: AppColors.PRIMARY_COLOR,
                      border: Border.all(
                          color: AppColors.TEXT_COLOR_DARK,
                          width: 1.0,
                          style: BorderStyle.solid),
                    ),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: blogAndArticles.length,
                      itemBuilder: (BuildContext context, int index) {
                        return HomePageInfoContainer(
                          infoName: blogAndArticles[index],
                          infoImage: blogAndArticlesLinks[index],
                        );
                      },
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
                    height: 200,
                    width: 450,
                    decoration: BoxDecoration(
                      color: AppColors.PRIMARY_COLOR,
                      border: Border.all(
                          color: AppColors.TEXT_COLOR_DARK,
                          width: 1.0,
                          style: BorderStyle.solid),
                    ),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: blogAndArticles.length,
                      itemBuilder: (BuildContext context, int index) {
                        return HomePageInfoContainer(
                          infoName: collectionPoints[index],
                          infoImage: collectionPointsLinks[index],
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 5.0, left: 20.0, right: 20.0, bottom: 10.0),
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
                    height: 400,
                    width: 450,
                    decoration: BoxDecoration(
                      color: AppColors.PRIMARY_COLOR,
                      border: Border.all(
                          color: AppColors.TEXT_COLOR_DARK,
                          width: 1.0,
                          style: BorderStyle.solid),
                    ),
                    child: const StreakCalendar(),
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
