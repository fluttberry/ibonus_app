import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibonus_app/bloc/auth/auth_bloc.dart';
import 'package:ibonus_app/bloc/auth/auth_event.dart';
import 'package:ibonus_app/bloc/auth/auth_state.dart';
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
            MTextField(controller: nameController,),
            SizedBox(height: 12),
            Text('Введите фамилию', style: TextStyle(color: Colors.white)),
            MTextField(controller: lastNameController,),
            SizedBox(height: 12),
            Text('Укажите город', style: TextStyle(color: Colors.white)),
            BlocBuilder<AuthBloc, AuthState>(
            
              builder: (context, state) {
                if (state.cityModel == null){
                  return CircularProgressIndicator();
                }
                return MDropDown(hint: 'city', cityModel: state.cityModel!, onSelect: (id) {
                  cityID = id;
                },);
              },
            ),
            Spacer(),
            MButton(onTap: () {
              if (nameController.text.isNotEmpty && lastNameController.text.isNotEmpty && cityID!=null){
                MRoute.push(context, page);
              }
            }, text: 'Зарегистрироваться'),
          ],
        ),
      ),
    );
  }
}
