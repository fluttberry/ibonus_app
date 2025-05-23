import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordEnrtyPage extends StatefulWidget {
  const PasswordEnrtyPage({super.key});

  @override
  State<PasswordEnrtyPage> createState() => _PasswordEnrtyPageState();
}

class _PasswordEnrtyPageState extends State<PasswordEnrtyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Password Enrty Page')),);
  }
}