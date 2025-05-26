import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ibonus_app/ui/pages/auth/login_page.dart';
import 'package:ibonus_app/ui/pages/auth/register/code_entry_page.dart';
import 'package:ibonus_app/ui/utils/style.dart';
import 'package:ibonus_app/ui/widget/button.dart';
import 'package:ibonus_app/ui/widget/text_field.dart';
import 'package:ibonus_app/utils/route.dart';

class PasswordEnrtyPage extends StatefulWidget {
  const PasswordEnrtyPage({super.key});

  @override
  State<PasswordEnrtyPage> createState() => _PasswordEnrtyPageState();
}

class _PasswordEnrtyPageState extends State<PasswordEnrtyPage> {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                MRoute.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
            ),
            SizedBox(height: 24),
            Text('Добро пожаловать в iBonus!', style: MTextStyle.title()),
            SizedBox(height: 50),
            Text('Введите пароль', style: TextStyle(color: Colors.white)),
            SizedBox(height: 12),
            MTextField(),
            SizedBox(height: 24),
            Text('Повторите пароль', style: TextStyle(color: Colors.white)),
            SizedBox(height: 12),
            MTextField(),
            Spacer(),
            MButton(
              onTap: () {
                MRoute.push(context, LoginPage);
              },
              text: 'Продолжить',
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Если вы зарегистрируетесь, применяются',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Политика конфиденциальности.',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
