import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibonus_app/bloc/store/store_bloc.dart';
import 'package:ibonus_app/bloc/store/store_state.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      builder: (context, state) {
        return BlocBuilder<StoreBloc, StoreState>(
          builder: (context, state) {
            if (state.storeModel != null) {
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return Text(state.storeModel!.results![index].name??'-');
                  
                },
              );
              
            } return Center(child: CircularProgressIndicator(),);
          },
        );
      },
    );
  }
}
