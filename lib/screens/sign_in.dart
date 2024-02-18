import 'package:flutter/material.dart';
import 'package:gdsc_solution_challenge_2024/widgets/round_button.dart';

class SigninScreen extends StatefulWidget{
  const SigninScreen({Key?key}):super(key:key);

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen>{
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose(){
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(''),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20  ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                   TextFormField(
              controller: emailController,
              decoration:const InputDecoration(
                hintText: 'Email',
                helperText: 'enter your email',
                prefixIcon: Icon(Icons.alternate_email)
              ),
            ),
            SizedBox(height:20 ,),
            TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration:const InputDecoration(
                hintText: 'Password',
                helperText: 'enter your password',
                
              ),
            ),


                ],)
              ),
              SizedBox(height:50 ,),
           
            RoundButton(
              title : 'Sign in',
              onTap:(){} ,
            ),
          ],
        ),
      ),
    );
  }
}