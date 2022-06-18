import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'n2o_event.dart';
part 'n2o_state.dart';

class N2oBloc extends Bloc<N2oEvent, N2oState> {
  N2oBloc() : super(N2oState()) {
    on<N2oEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
