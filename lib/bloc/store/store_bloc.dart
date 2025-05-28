import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibonus_app/bloc/store/store_event.dart';
import 'package:ibonus_app/bloc/store/store_state.dart';

class StoreBloc extends Bloc <StoreEvent, StoreState> {
  StoreBloc():super(StoreState()){
    on <StoreGetEvent>(_getStores);
  }
  _getStores(StoreGetEvent event, emit){
    
  }
}