import 'package:flutter/material.dart';
import 'package:ibonus_app/data/shared_pref.dart';


class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
 checkAuth();
    return Scaffold();
  }
checkAuth()async{
  await SharedPref.init();
  if (SharedPref.getToken().isEmpty){
    //open auth
  }else{
    //open home
  }
}

}