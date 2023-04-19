import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_bloc.freezed.dart';
part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState.initial()) {
    on<Increment>((event, emit) {
      return emit(state.copyWith(
          counterValue: state.counterValue + 1, wasIncremented: false));
    });

    on<Decrement>((event, emit) {
      return emit(state.copyWith(
          counterValue: state.counterValue - 1, wasIncremented: true));
    });
  }
}
