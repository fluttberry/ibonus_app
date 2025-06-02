import 'package:flutter/material.dart';
import 'package:ibonus_app/data/shared_pref.dart';
import 'package:ibonus_app/ui/pages/auth/auth_page.dart';
import 'package:ibonus_app/ui/pages/home/home_page.dart';
import 'package:ibonus_app/utils/route.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    checkAuth(context);
    return Scaffold();
  }

  checkAuth(context) async {
    await SharedPref.init();
    print(SharedPref.getToken());
    if (SharedPref.getToken().isEmpty) {
      MRoute.replace(context, AuthPage());
    } else {
       MRoute.replace(context, HomePage());
    }
  }
}
