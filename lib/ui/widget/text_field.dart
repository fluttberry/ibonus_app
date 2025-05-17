// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hint;
  const MTextField({super.key, this.controller, this.hint});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: controller,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(hintText: hint, border: InputBorder.none),
      ),
    );
  }
}
