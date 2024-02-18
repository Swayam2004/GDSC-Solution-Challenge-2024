import 'package:flutter/material.dart';
import 'package:gdsc_solution_challenge_2024/screens/sign_in.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Column(
              children: [
                Text(
                  "Hello, Welcome to our app",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Lorem ipsum dolor sit amet consectetur. Dui quam ut dictum at odio ",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            Image.asset('assets/images/undraw_takeout_boxes_ap54.png'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) =>
                        SigninScreen()));
                  },
                  style: OutlinedButton.styleFrom(
                    fixedSize: const Size(150, 60),
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromARGB(255, 189, 189, 189),
                    side: const BorderSide(width: 1.0, color: Colors.black),
                  ),
                  child: const Text(
                    'Next',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                // OutlinedButton(
                //   onPressed: () {},
                //   style: OutlinedButton.styleFrom(
                //     fixedSize: const Size(150, 60),
                //     foregroundColor: Colors.black,
                //     backgroundColor: const Color.fromARGB(255, 210, 210, 210),
                //     side: const BorderSide(width: 1.0, color: Colors.black),
                //   ),
                //   child: const Text(
                //     'Sign Up',
                //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                //   ),
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
