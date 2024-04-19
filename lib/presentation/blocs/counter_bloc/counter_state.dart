part of 'counter_bloc.dart';

class CounterState extends Equatable {
  final int counter;
  final int transaction;

  const CounterState({this.counter = 10, this.transaction = 0});

  CounterState copyWith({
    int? counter,
    int? transaction,
  }) =>
      CounterState(
        counter: counter ?? this.counter,
        transaction: transaction ?? this.transaction,
      );

  @override
  List<Object> get props => [counter, transaction];
}

final class CounterInitial extends CounterState {}
