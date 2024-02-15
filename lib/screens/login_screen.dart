import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

@override
State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen>{
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          //Welcome Back!
          const Text(
            'Hey! Welcome Back',
            style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 36,
            
             ),
             ),
          const SizedBox(height: 50),
          //email
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration : BoxDecoration(
                color: Colors.grey,
                border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
               ),
                child: const Padding(
                  padding:  EdgeInsets.only(left: 20.0),
                  child: TextField(
                    
                    decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email',
                  ),
                              
                  ),
                )
                ,
              ),
          ),
          /*),*/
          const SizedBox(height:10 ),
          //password
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              decoration : BoxDecoration(
                color: Colors.grey,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
             ),
              child: const Padding(
                padding:  EdgeInsets.only(left: 20.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Password',
                )
                            
                ),
              )
              ,
            ),
          ),
          const SizedBox(height: 10),
          //sign in button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.purple,
              borderRadius: BorderRadius.circular(12)),
              child: const Center(
                child: Text('Sign In',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  
                  ) ,
                ),
              ),
            ),
          ),
          const SizedBox(height: 25),

          //not a member? sign up
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Not a member?',
              style: TextStyle(
                  
                  fontWeight: FontWeight.bold,
                )),
            ],
          ),
          const Text(
            'Sign Up',
            style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
            ),
          )
          
          
          
                ]),
        ),
      )
      
    );
  }

}
/*
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
                  onPressed: () {},
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
*/