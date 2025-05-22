import 'package:flutter/material.dart';
import 'package:ibonus_app/ui/utils/style.dart';
import 'package:ibonus_app/ui/widget/button.dart';
import 'package:ibonus_app/utils/route.dart';
import 'package:pinput/pinput.dart';

class CodeEntryPage extends StatelessWidget {
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
            Text('Введите код', style: MTextStyle.title()),
            SizedBox(height: 50),
            Text(
              'Мы отправили код на номер /n 996700600600 через WhatsApp',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 12),
            Pinput(length: 6),
            Spacer(),
            MButton(onTap: () {}, text: 'Продолжить'),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
