import 'package:flutter/material.dart';
import 'package:gdsc_solution_challenge_2024/screens/sign_in.dart';

class AppInfoScreen extends StatefulWidget {
  const AppInfoScreen({super.key});

  @override
  State<AppInfoScreen> createState() => _AppInfoScreenState();
}

class _AppInfoScreenState extends State<AppInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/logos/new_recycle_logo_original.png",
                  height: 60,
                  width: 60,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Text(
                    "Recco",
                    style: TextStyle(
                      fontSize: 33,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
            Column(
              children: [
                Container(
                    margin: const EdgeInsets.only(bottom: 50.0),
                    child:
                        Image.asset('assets/images/recycle_illustration.jpg')),
                const Padding(
                  padding: EdgeInsets.only(left: 30.0, right: 30.0),
                  child: Column(
                    children: [
                      Text(
                        "Welcome to Reeco",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "This app will help you in finding how to recycle/reuse your everyday items",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: TextButton(
                style: OutlinedButton.styleFrom(
                  fixedSize: const Size(312, 60),
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xffFC9A32),
                ),
                child: const Text(
                  'Get Started',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SigninScreen(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
