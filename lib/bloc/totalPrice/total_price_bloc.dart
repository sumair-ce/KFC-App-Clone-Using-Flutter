import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'total_price_event.dart';
part 'total_price_state.dart';

class TotalPriceBloc extends Bloc<TotalPriceEvent, TotalPriceState> {
  TotalPriceBloc() : super(TotalPriceInitial()) {
    on<TotalPriceEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
