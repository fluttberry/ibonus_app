import 'package:flutter/material.dart';
import 'package:ibonus_app/utils/route.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg2.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          IconButton(onPressed: (){
            MRoute.pop(context);
          }, icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white,))
        ],),
      ),
    );
  }
}
