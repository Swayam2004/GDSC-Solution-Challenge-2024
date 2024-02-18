import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gdsc_solution_challenge_2024/screens/sign_up.dart';
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
    return WillPopScope(
      onWillPop: ()async{
        SystemNavigator.pop();
        return true;
      } ,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Hey! Welcome back! Sign in to continue'),
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
                  suffixIcon: Icon(Icons.alternate_email)
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
                  suffixIcon: Icon(Icons.lock_open)
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
                    Navigator.push(context,
                     MaterialPageRoute(
                      builder: (context) => SignupScreen())
                      ); 
                  },
                  child: Text('Sign Up'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}