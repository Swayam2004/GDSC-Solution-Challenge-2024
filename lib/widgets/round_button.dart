import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget{
  final String title;
  final VoidCallback onTap;
  const RoundButton({Key ? key,
  required this.title,
  required this.onTap
  
  }) : super (key: key);

  @override
  Widget build(BuildContext context){
   
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(child: Text(title, style: TextStyle(color: Colors.white),),),
      ),
    );
  }
}