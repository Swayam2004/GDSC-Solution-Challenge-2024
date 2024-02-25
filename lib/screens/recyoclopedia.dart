import 'package:flutter/material.dart';
import 'package:gdsc_solution_challenge_2024/utils/constants/colors.dart';

class RecyclopediaPage extends StatefulWidget {
  const RecyclopediaPage({super.key, required this.title});

  final String title;

  @override
  State<RecyclopediaPage> createState() => _RecyclopediaState();
}

class _RecyclopediaState extends State<RecyclopediaPage> {
  final List<String> entries = <String>[
    'Solid Waste',
    'Wet Waste',
    'Chemical Waste',
    'Plastic Waste',
    'Electronic Waste',
    'Biodegradeble Waste',
    'Chemical Waste',
    'Plastic Waste',
    'Electronic Waste',
    'Biodegradeble Waste'
  ];

  int current = 0;
  // int _bottomNavBarCurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, bottom: 20.0, left: 10.0, right: 10.0),
              child: SearchAnchor(
                  builder: (BuildContext context, SearchController controller) {
                return SearchBar(
                  controller: controller,
                  padding: const MaterialStatePropertyAll<EdgeInsets>(
                      EdgeInsets.symmetric(horizontal: 16.0)),
                  backgroundColor:
                      MaterialStateProperty.all(AppColors.ACCENT_COLOR),
                  hintText: "Search",
                  onTap: () {
                    controller.openView();
                  },
                  onChanged: (_) {
                    controller.openView();
                  },
                  trailing: const <Widget>[
                    Tooltip(
                      message: 'Change brightness mode',
                      child: Icon(Icons.search),
                    )
                  ],
                );
              }, suggestionsBuilder:
                      (BuildContext context, SearchController controller) {
                return List<ListTile>.generate(5, (int index) {
                  final String item = 'Settings item $index';
                  return ListTile(
                    title: Text(item),
                    onTap: () {
                      setState(() {
                        controller.closeView(item);
                      });
                    },
                  );
                });
              }),
            ),
            ListView.separated(
              shrinkWrap: true,
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 10.0, bottom: 10.0),
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 55,
                  decoration: BoxDecoration(
                      color: AppColors.PRIMARY_COLOR,
                      border: Border.all(
                          color: AppColors.TEXT_COLOR_DARK,
                          width: 1.5,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          entries[index],
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 15.0),
                        child: Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider();
              },
            ),
          ],
        ),
      ),
    );
  }
}
