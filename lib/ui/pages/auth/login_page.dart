import 'package:flutter/material.dart';
import 'package:ibonus_app/ui/pages/auth/register/register_page.dart';
import 'package:ibonus_app/ui/utils/style.dart';
import 'package:ibonus_app/ui/widget/button.dart';
import 'package:ibonus_app/ui/widget/text_field.dart';
import 'package:ibonus_app/utils/route.dart';

class LoginPage extends StatelessWidget {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
            SizedBox(height: 12),
            Text(
              'Введите номер телефона',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 8),
            MTextField(controller: phoneController),
            SizedBox(height: 12),
            Text('Введите пароль', style: TextStyle(color: Colors.white)),
            SizedBox(height: 8),
            MTextField(controller: passwordController),
            SizedBox(height: 12),
            Align(alignment: Alignment.centerRight,
              child: Text(
                'Забыли пароль?',
              
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 40),
            MButton(onTap: () {}, text: 'Войти'),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'У вас нет аккаунт?',
                      style: TextStyle(
                        color: Color(0xffaea3c8),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'Зарегистрируйтесь',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(height: 40),
                  ],
                ),
                Container(
                  height: 56,
                  width: 80,

                  decoration: BoxDecoration(
                    color: const Color(0xff8c63ee).withAlpha(10),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    onTap: () {
                      MRoute.push(context, RegisterPage());
                    },
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Color(0xff8c63ee),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
