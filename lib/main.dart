import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibonus_app/bloc/auth/auth_bloc.dart';
import 'package:ibonus_app/ui/pages/splash/splash_page.dart';

void main() {
  runApp(MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => AuthBloc(), child: Container()),
        ],
        child:  MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashPage()
    );
  }
}
