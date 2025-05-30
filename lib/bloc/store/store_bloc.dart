import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibonus_app/bloc/store/store_event.dart';
import 'package:ibonus_app/bloc/store/store_state.dart';
import 'package:ibonus_app/repository/store_repository.dart';

class StoreBloc extends Bloc <StoreEvent, StoreState> {
  StoreBloc():super(StoreState()){
    on <StoreGetEvent>(_getStores);
  }
  StoreRepository storeRepository = StoreRepository();
  _getStores(StoreGetEvent event, emit) async{
state.storeModel = await storeRepository.get();
emit(state);
  }
}