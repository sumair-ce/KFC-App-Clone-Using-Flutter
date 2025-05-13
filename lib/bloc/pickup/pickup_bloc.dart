import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'pickup_event.dart';
part 'pickup_state.dart';

class PickupBloc extends Bloc<PickupEvent, PickupState> {
  PickupBloc() : super(PickupState()) {
    on<SelectPickupPoint>(_selectPickupPoint);
  }

  void _selectPickupPoint(SelectPickupPoint event, Emitter<PickupState> emit) {
    emit(state.copyWith(PickupPoint: event.pickupPoint));
  }
}
