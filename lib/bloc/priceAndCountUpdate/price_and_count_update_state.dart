part of 'price_and_count_update_bloc.dart';

// ignore: must_be_immutable
class PriceAndCountUpdateState extends Equatable {
  final int counter;
  int totalprice;
  PriceAndCountUpdateState({this.counter = 1, this.totalprice = 0});

  PriceAndCountUpdateState copyWith({int? counter, int? totalprice}) {
    return PriceAndCountUpdateState(
        counter: counter ?? this.counter,
        totalprice: totalprice ?? this.totalprice);
  }

  @override
  List<Object> get props => [counter, totalprice];
}
