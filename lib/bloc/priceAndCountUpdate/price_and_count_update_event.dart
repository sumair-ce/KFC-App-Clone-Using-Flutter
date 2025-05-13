part of 'price_and_count_update_bloc.dart';

abstract class PriceAndCountUpdateEvent extends Equatable {
  final int additionalprice;
  const PriceAndCountUpdateEvent({this.additionalprice = 0});

  @override
  List<Object> get props => [];
}

class incrementcounter extends PriceAndCountUpdateEvent {}

class decrementcounter extends PriceAndCountUpdateEvent {}

class updateprice extends PriceAndCountUpdateEvent {
  final int additionalprice;

  const updateprice(this.additionalprice);

  @override
  List<Object> get props => [additionalprice];
}
