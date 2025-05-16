// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:ibonus_app/ui/utils/colors.dart';

class MButton extends StatelessWidget {
  final Function() onTap;
  final String text;
  final bool full;
  final Color textColor;
  const MButton({
    super.key,
    required this.onTap,
    required this.text,
    this.full = true,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: full ? MColor.accent : null,
          borderRadius: BorderRadius.circular(8),
          border: full ? null : Border.all(color: Colors.white),
        ),
        child: Text(text, style: TextStyle(color: textColor)),
      ),
    );
  }
}
