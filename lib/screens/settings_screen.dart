import 'package:flutter/material.dart';
import 'package:gdsc_solution_challenge_2024/utils/constants/colors.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  List<String> items = [
    "My Badges",
    "My Achievements",
  ];

  final List<String> entries = <String>[
    'Edit Profile',
    'Change Language',
    'Appearance',
    'Notifications',
    'Services & App Issues',
    'Help Center',
  ];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 36.0,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        leadingWidth: 75.0,
        title: Container(
          margin: const EdgeInsets.only(left: 10.0),
          child: const Text(
            "Settings",
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
          ),
        ),
        backgroundColor: const Color(0xff167E6B),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 20.0, bottom: 20.0, left: 10.0, right: 10.0),
                child: SearchAnchor(builder:
                    (BuildContext context, SearchController controller) {
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
              Container(
                height: 64.0,
                width: 164.0,
                margin: const EdgeInsets.only(top: 40.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: const Color(0xffFC9A32),
                      foregroundColor: Colors.white),
                  child: const Text(
                    'Log out',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
