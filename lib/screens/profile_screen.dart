import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<String> items = [
    "My Badges",
    "My Achievements",
  ];

  int current = 0;
  // int _bottomNavBarCurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 250,
                    width: 312,
                    margin: const EdgeInsets.only(top: 20.0),
                    decoration: BoxDecoration(
                      color: const Color(0xff0E6465),
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black,
                                width: 1.0,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(75),
                            color: Colors.white,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(75),
                            child: SizedBox(
                              width: 150,
                              height: 150,
                              child: Image.asset(
                                  "assets/logos/profile_logo_image.jpg"),
                            ),
                          ),
                        ),
                        const Text(
                          "Ajay Gouda",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                        const Text(
                          "ajaygouda@gmail.com",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 120,
                width: 312,
                margin: const EdgeInsets.only(top: 20.0),
                decoration: BoxDecoration(
                  color: const Color(0xff0E6465),
                  border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 84,
                      width: 84,
                      decoration: BoxDecoration(
                          color: const Color(0xff167E6B),
                          border: Border.all(
                              color: const Color(0xffFC9A32),
                              width: 3.0,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(42)),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "50%",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                            ),
                          ),
                          Text(
                            "Recycle",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 84,
                      width: 84,
                      decoration: BoxDecoration(
                          color: const Color(0xff167E6B),
                          border: Border.all(
                              color: const Color(0xffFC9A32),
                              width: 3.0,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(42)),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "50%",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                            ),
                          ),
                          Text(
                            "Compost",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 84,
                      width: 84,
                      decoration: BoxDecoration(
                          color: const Color(0xff167E6B),
                          border: Border.all(
                              color: const Color(0xffFC9A32),
                              width: 3.0,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(42)),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "50%",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                            ),
                          ),
                          Text(
                            "Waste",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 500,
                width: 312,
                margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                decoration: BoxDecoration(
                  color: const Color(0xff167E6B),
                  border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 45,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.black,
                                width: 1.0,
                                style: BorderStyle.solid)),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                      ),
                      child: ListView.builder(
                          itemCount: 2,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  current = index;
                                });
                              },
                              child: Container(
                                height: 40,
                                width: 156,
                                decoration: BoxDecoration(
                                    color: (current == index)
                                        ? const Color(0xffFC9A32)
                                        : const Color(0xff167E6B),
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1.0,
                                      style: BorderStyle.solid,
                                    ),
                                    borderRadius: (index == 0)
                                        ? const BorderRadius.only(
                                            topLeft: Radius.circular(10.0))
                                        : const BorderRadius.only(
                                            topRight: Radius.circular(10.0))),
                                child: Center(
                                  child: Text(
                                    items[index],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
