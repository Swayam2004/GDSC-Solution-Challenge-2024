import 'package:flutter/material.dart';
import 'package:gdsc_solution_challenge_2024/widgets/round_button.dart';

class SignupScreen extends StatefulWidget{
  const SignupScreen({Key?key}):super(key:key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen>{
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
        title: Text('Sign Up'),
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
                    keyboardType: TextInputType.emailAddress,
              controller: emailController,
              decoration:const InputDecoration(
                hintText: 'Email',
                helperText: 'enter your email',
                prefixIcon: Icon(Icons.alternate_email)
              ),
              validator: (value){
                if(value!.isEmpty){
                  return 'Enter email';
                }
                return null;

              },
            ),

            
            SizedBox(height:20 ,),
            TextFormField(
              keyboardType: TextInputType.text,
              controller: passwordController,
              obscureText: true,
              decoration:const InputDecoration(
                hintText: 'Password',
                helperText: 'enter your password',
                prefixIcon: Icon(Icons.lock_open)
              ),
              validator: (value){
                if(value!.isEmpty){
                  return 'Enter password';

                }
                return null;

              },
            ),
                ],
                   


                
                )
              ),
             const SizedBox(height:50 ,),
           
            RoundButton(
              title : 'Sign in',
              onTap:(){
                if(_formKey.currentState!.validate()){

                }

              } ,
            ),
            const SizedBox(height:30 ,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Dont have an account?'),
                TextButton(onPressed: (){

                },
                child: Text('Sign Up'))
              ],
            )
          ],
        ),
      ),
    );
  }
}