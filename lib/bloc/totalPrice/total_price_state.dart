part of 'total_price_bloc.dart';

sealed class TotalPriceState extends Equatable {
  const TotalPriceState();
  
  @override
  List<Object> get props => [];
}

final class TotalPriceInitial extends TotalPriceState {}
