import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibonus_app/bloc/store/store_bloc.dart';
import 'package:ibonus_app/bloc/store/store_state.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreBloc, StoreState>(
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
        );
      
  }
}
