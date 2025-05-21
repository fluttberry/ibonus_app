// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:ibonus_app/ui/utils/colors.dart';

class MButton extends StatelessWidget {
  final Function() onTap;
  final String text;
  final bool full;
  final Color textColor;
  final EdgeInsets? margin;
  const MButton({
    super.key,
    required this.onTap,
    required this.text,
    this.full = true,
    this.textColor = Colors.white,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      overlayColor: WidgetStatePropertyAll(Colors.transparent),
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        margin: margin,
        width: double.infinity,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: full ? MColor.accent : null,
          borderRadius: BorderRadius.circular(8),
          border: full ? null : Border.all(color: Colors.white),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
