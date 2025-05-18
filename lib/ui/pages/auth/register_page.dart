import 'package:flutter/material.dart';
import 'package:ibonus_app/ui/utils/style.dart';
import 'package:ibonus_app/ui/widget/drop_down.dart';
import 'package:ibonus_app/ui/widget/text_field.dart';
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
            Text('Введите имя', style: TextStyle(color: Colors.white)),
            MTextField(),
            SizedBox(height: 12),
            Text('Введите фамилию', style: TextStyle(color: Colors.white)),
            MTextField(),
            SizedBox(height: 12),
            Text('Укажите город', style: TextStyle(color: Colors.white)),
            MDropDown(hint: 'city'),

          ],
        ),
      ),
    );
  }
}
