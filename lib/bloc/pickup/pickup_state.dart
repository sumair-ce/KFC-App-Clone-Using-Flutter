part of 'pickup_bloc.dart';

class PickupState extends Equatable {
  final String PickupPoint;
  const PickupState({this.PickupPoint = 'No Adress Selected'});

  PickupState copyWith({String? PickupPoint}) {
    return PickupState(PickupPoint: PickupPoint ?? this.PickupPoint);
  }

  @override
  List<Object> get props => [PickupPoint];
}
