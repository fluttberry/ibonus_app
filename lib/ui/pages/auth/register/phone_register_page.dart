// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ibonus_app/bloc/auth/auth_bloc.dart';
import 'package:ibonus_app/bloc/auth/auth_event.dart';
import 'package:ibonus_app/model/user_register_model.dart';
import 'package:ibonus_app/ui/utils/style.dart';
import 'package:ibonus_app/ui/widget/button.dart';
import 'package:ibonus_app/ui/widget/text_field.dart';
import 'package:ibonus_app/utils/route.dart';

class PhoneRegisterPage extends StatelessWidget {
  final UserRegisterModel userRegisterModel;
  PhoneRegisterPage({super.key, required this.userRegisterModel});
  TextEditingController phoneController = TextEditingController();
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
            Text('Верификация', style: MTextStyle.title()),
            SizedBox(height: 12),
            Text(
              'Введите номер телефона',
              style: TextStyle(color: Colors.white),
            ),
            MTextField(
              controller: phoneController,
              textInputType: TextInputType.phone,
            ),

            Spacer(),
            MButton(
              onTap: () {
                if (phoneController.text.isNotEmpty) {
                  userRegisterModel.phone = phoneController.text;
                  context.read<AuthBloc>().add(AuthEventRegister(userRegisterModel: userRegisterModel));
                }
              },
              text: 'Продолжить',
            ),
          ],
        ),
      ),
    );
  }
}
