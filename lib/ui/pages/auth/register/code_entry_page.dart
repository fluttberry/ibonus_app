// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:ibonus_app/ui/pages/auth/register/password_enrty_page.dart';
import 'package:pinput/pinput.dart';


import 'package:ibonus_app/ui/utils/style.dart';
import 'package:ibonus_app/ui/widget/button.dart';
import 'package:ibonus_app/utils/route.dart';

class CodeEntryPage extends StatelessWidget {
CodeEntryPage({
    super.key,
    required this.phone,
  });
  final String phone;
  TextEditingController smsContoller = TextEditingController();
  final defaultPinTheme = PinTheme;

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
              'Мы отправили код на номер',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              '$phone через WhatsApp',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 12),
            Align(
              alignment: Alignment.center,
              child: Pinput(
                length: 6,
                controller: smsContoller,
                defaultPinTheme: PinTheme(
                  width: 40,
                  height: 44,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                  ),
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Spacer(),
            MButton(onTap: () {
              MRoute.push(context, PasswordEnrtyPage(sms: smsContoller.text));
            }, text: 'Продолжить'),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
