import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibonus_app/bloc/store/store_bloc.dart';
import 'package:ibonus_app/bloc/store/store_event.dart';
import 'package:ibonus_app/bloc/store/store_state.dart';
import 'package:ibonus_app/ui/widget/filter_bottom_sheet.dart';
import 'package:ibonus_app/ui/widget/text_field.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: MTextField(dark: true, onSubmitted: (search) {
              context.read<StoreBloc>().add(StoreGetEvent(search: search, type: ['STORE']));
            },)),
            InkWell(
              onTap: () {
                showModalBottomSheet(context: context, builder: (context){
                  // context.read<StoreBloc>().add(StoreGetEvent());
                  return FilterBottomSheet();
                });
              },
              child: Container(
                padding: EdgeInsets.all(12),
                child: Icon(Icons.menu_rounded),
              ),
            ),
          ],
        ),
        Expanded(
          child: BlocBuilder<StoreBloc, StoreState>(
            builder: (context, state) {
              if (state.storeModel != null) {
                return GridView.builder(
                  itemCount: state.storeModel?.results?.length ?? 0,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Text(state.storeModel!.results![index].name ?? '-'),
                        Text(state.storeModel!.results![index].address ?? '-'),
                      ],
                    );
                  },
                );
              }
              return Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ],
    );
  }
}
