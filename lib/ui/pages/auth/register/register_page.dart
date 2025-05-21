import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibonus_app/bloc/auth/auth_bloc.dart';
import 'package:ibonus_app/bloc/auth/auth_event.dart';
import 'package:ibonus_app/bloc/auth/auth_state.dart';
import 'package:ibonus_app/model/user_register_model.dart';
import 'package:ibonus_app/ui/pages/auth/login_page.dart';
import 'package:ibonus_app/ui/pages/auth/register/phone_register_page.dart';
import 'package:ibonus_app/ui/utils/style.dart';
import 'package:ibonus_app/ui/widget/button.dart';
import 'package:ibonus_app/ui/widget/drop_down.dart';
import 'package:ibonus_app/ui/widget/text_field.dart';
import 'package:ibonus_app/utils/route.dart';

class RegisterPage extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  int? cityID;
  @override
  Widget build(BuildContext context) {
    context.read<AuthBloc>().add(AuthEventGetCity());
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
            SizedBox(height: 8),
            MTextField(controller: nameController),
            SizedBox(height: 12),
            Text('Введите фамилию', style: TextStyle(color: Colors.white)),
            SizedBox(height: 8),
            MTextField(controller: lastNameController),
            SizedBox(height: 12),
            Text('Укажите город', style: TextStyle(color: Colors.white)),
            SizedBox(height: 8),
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                if (state.cityModel == null) {
                  return CircularProgressIndicator();
                }
                return MDropDown(
                  hint: 'city',
                  cityModel: state.cityModel!,
                  onSelect: (id) {
                    cityID = id;
                  },
                );
              },
            ),
            Spacer(),
            MButton(
              onTap: () {
                if (nameController.text.isNotEmpty &&
                    lastNameController.text.isNotEmpty &&
                    cityID != null) {
                  MRoute.push(
                    context,
                    PhoneRegisterPage(
                      userRegisterModel: UserRegisterModel(
                        phone: '',
                        name: nameController.text,
                        lastName: lastNameController.text,
                        cityId: cityID!,
                      ),
                    ),
                  );
                }
              },
              text: 'Зарегистрироваться',
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'У вас уже есть аккаунт?',
                      style: TextStyle(
                        color: Color(0xffaea3c8),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'Войти',
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
                    color: Color(0xff8c63ee,).withAlpha(10),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    onTap: () {
                      MRoute.push(context, LoginPage());
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
