// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:ibonus_app/model/city_model.dart';
import 'package:ibonus_app/ui/utils/colors.dart';

class MDropDown extends StatefulWidget {
  final String? hint;
  final CityModel cityModel;
  const MDropDown({super.key, this.hint, required this.cityModel});
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
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      decoration: BoxDecoration(
        
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          dropdownColor: MColor.accent,
          style: TextStyle(color: Colors.white),
          isExpanded: true,
          value: value,
          hint: Text(widget.hint ?? '', style: TextStyle(color: Colors.white)),
          items: [
            for (CityResults city in widget.cityModel.results ?? [])
              DropdownMenuItem(value: city.id, child: Text('${city.name}')),
          ],
          onChanged: (value) {
            setState(() {
              this.value = value;
            });
          },
        ),
      ),
    );
  }
}
