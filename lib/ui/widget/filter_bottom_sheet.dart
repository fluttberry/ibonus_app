import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibonus_app/bloc/store/store_bloc.dart';
import 'package:ibonus_app/bloc/store/store_event.dart';
import 'package:ibonus_app/ui/widget/button.dart';
import 'package:ibonus_app/utils/route.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FilterBottomSheetState();
  }
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  bool all = true;
  bool cafe = false;
  bool restaraunt = false;
  bool store = false;
  bool service = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Фильтры',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Text(
                  'Сбросить все',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Все'),
                Checkbox(
                  value: all,
                  onChanged: (v) {
                    setState(() {
                      all = !all;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Кофейня и бары'),
                Checkbox(
                  value: cafe,
                  onChanged: (v) {
                    setState(() {
                      cafe = !cafe;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Рестораны и кафе'),
                Checkbox(
                  value: restaraunt,
                  onChanged: (v) {
                    setState(() {
                      restaraunt = !restaraunt;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Магазины'),
                Checkbox(
                  value: store,
                  onChanged: (v) {
                    setState(() {
                      store = !store;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Услуги'),
                Checkbox(
                  value: service,
                  onChanged: (v) {
                    setState(() {
                      service = !service;
                    });
                  },
                ),
              ],
            ),
            Spacer(),
            MButton(
              onTap: () {
                List<String> type = [];
                if (cafe) {
                  type.add('CAFE');
                }
                if (restaraunt) {
                  type.add('RESTAURANT');
                }
                if (store) {
                  type.add('STORE');
                }
                if (all) {
                  type.clear();
                }
                context.read<StoreBloc>().add(StoreGetEvent(type: type));
                MRoute.pop(context);
              },
              text: 'Применить',
            ),
            SizedBox(height: 10),
            MButton(onTap: (){
              MRoute.pop(context);
            }, text: 'Отмена'),

            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
