import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'sf6_event.dart';
part 'sf6_state.dart';

class Sf6Bloc extends Bloc<Sf6Event, Sf6State> {
  Sf6Bloc() : super(const Sf6State()) {
    on<Sf6Event>((event, emit) {
      // TODO: implement event handler
    });
  }
}
