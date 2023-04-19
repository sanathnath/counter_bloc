part of 'counter_bloc.dart';

@freezed
class CounterState with _$CounterState {
  const factory CounterState(
      {required int counterValue,
      required bool wasIncremented}) = _CounterState;

  factory CounterState.initial() =>
      const CounterState(counterValue: 0, wasIncremented: false);
}
