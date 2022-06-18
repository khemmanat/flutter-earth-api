import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'co2_event.dart';
part 'co2_state.dart';

class Co2Bloc extends Bloc<Co2Event, Co2State> {
  Co2Bloc() : super(Co2Initial()) {
    on<Co2Event>((event, emit) {
      // TODO: implement event handler
    });
  }
}
