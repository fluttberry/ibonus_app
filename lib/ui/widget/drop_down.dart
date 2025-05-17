// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';
import 'package:flutter/material.dart';

class MDropDown extends StatefulWidget {
  final String? hint;
  const MDropDown({Key? key, this.hint}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _MDropDownState();
  }
}

class _MDropDownState extends State<MDropDown> {
  int? value;
  @override
  Widget build(BuildContext context) {
    
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton(
        value: value,
        hint: Text(widget.hint ?? ''),
        items: [
          DropdownMenuItem(value: 0, child: Text('Osh')),
          DropdownMenuItem(value: 1, child: Text('Bishkek')),
          ],
        onChanged: (value) {
          setState(() {
            this.value = value;
          });
        },
      ),
    );
  }
}
