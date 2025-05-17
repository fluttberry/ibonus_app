import 'package:flutter/material.dart';
import 'package:ibonus_app/ui/pages/auth/login_page.dart';
import 'package:ibonus_app/ui/pages/auth/register_page.dart';
import 'package:ibonus_app/ui/widget/button.dart';
import 'package:ibonus_app/ui/utils/style.dart';
import 'package:ibonus_app/utils/route.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Добро пожаловать в iBonus!',
              style: MTextStyle.title(),
            ),
            SizedBox(height: 12),
            Text(
              'Еда, которую вы любите и обожаете, с доставкой!\nСкидки – всё в одном месте!',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(height: 12),
            MButton(
              onTap: () {
                MRoute.push(context, LoginPage());
              },
              text: 'Войти',
            ),
            SizedBox(height: 12),
            MButton(
              onTap: () {
                MRoute.push(context, RegisterPage());
              },
              text: 'Зарегистрироваться',
              full: false,
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
