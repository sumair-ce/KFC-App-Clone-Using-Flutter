part of 'pickup_bloc.dart';

abstract class PickupEvent extends Equatable {
  const PickupEvent();

  @override
  List<Object> get props => [];
}

class SelectPickupPoint extends PickupEvent {
  final String pickupPoint;

  const SelectPickupPoint(this.pickupPoint);

  @override
  List<Object> get props => [pickupPoint];
}
