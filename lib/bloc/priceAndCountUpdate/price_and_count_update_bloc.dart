import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'price_and_count_update_event.dart';
part 'price_and_count_update_state.dart';

class PriceAndCountUpdateBloc
    extends Bloc<PriceAndCountUpdateEvent, PriceAndCountUpdateState> {
  PriceAndCountUpdateBloc() : super(PriceAndCountUpdateState()) {
    on<incrementcounter>(_incrementcounter);
    on<decrementcounter>(_decrementcounter);
    on<updateprice>(_updateprice);
  }
  void _incrementcounter(
      incrementcounter event, Emitter<PriceAndCountUpdateState> emit) {
    emit(state.copyWith(
        counter: state.counter + 1,
        totalprice: state.totalprice + state.totalprice));
  }

  void _decrementcounter(
      decrementcounter event, Emitter<PriceAndCountUpdateState> emit) {
    if (state.counter > 0) {
      emit(state.copyWith(
          counter: state.counter - 1, totalprice: state.totalprice));
    }
  }

  void _updateprice(updateprice event, Emitter<PriceAndCountUpdateState> emit) {
    emit(state.copyWith(totalprice: event.additionalprice + state.totalprice));
  }
}
