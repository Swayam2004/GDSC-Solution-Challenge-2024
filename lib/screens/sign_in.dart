import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gdsc_solution_challenge_2024/screens/app_info_screen.dart';
import 'package:gdsc_solution_challenge_2024/screens/screen_wrapper.dart';
import 'package:gdsc_solution_challenge_2024/screens/sign_up.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        SystemNavigator.pop();
        return;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const AppInfoScreen(),
                ),
              );
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hey!\nWelcome Back",
                    // textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 40.0,
                    ),
                  ),
                  Opacity(
                    opacity: 0.70,
                    child: Text(
                      "Sign in to continue",
                      // textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      decoration: const InputDecoration(
                        hintText: 'Email',
                        suffixIcon: Icon(Icons.email_outlined),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black,
                              width: 3.0,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter email';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      controller: passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: 'Password',
                        suffixIcon: Icon(Icons.lock_outline),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black,
                              width: 3.0,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter password';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    const Text(
                      "Forget Password?",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15.0,
                          color: Color(0xffFC9A32)),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 48.0,
                    width: 160.0,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: const Color(0xffFC9A32),
                          foregroundColor: Colors.white),
                      child: const Text(
                        'Sign in',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) {
                                return const ScreenWrapper();
                              }),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 5.0,
                        width: 100.0,
                        decoration:
                            const BoxDecoration(color: Color(0xff0E6465)),
                      ),
                      const Text(
                        "Or continue with",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15.0,
                        ),
                      ),
                      Container(
                        height: 5.0,
                        width: 100.0,
                        decoration:
                            const BoxDecoration(color: Color(0xff0E6465)),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 15.0),
                        child: Icon(
                          size: 72,
                          Icons.facebook,
                          color: Colors.blue,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Icon(
                          size: 72,
                          Icons.reddit,
                          color: Colors.orange.shade800,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15.0),
                        child: Icon(
                          size: 72,
                          Icons.apple,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignupScreen(),
                        ),
                      );
                    },
                    child: const Text('Sign Up'),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
