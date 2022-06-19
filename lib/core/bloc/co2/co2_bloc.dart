import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_earth_api/core/api/co2_api.dart';
import 'package:flutter_earth_api/core/models/co2.dart';

part 'co2_event.dart';
part 'co2_state.dart';

class Co2Bloc extends Bloc<Co2Event, Co2State> {
  Co2Bloc() : super(const Co2State()) {
    on<FetchCO2YearlyEvent>(mapFetchCo2YearlyEventToState);
  }

  mapFetchCo2YearlyEventToState(FetchCO2YearlyEvent event, Emitter emit) async {
    try {
      var res = await CO2Service().getYearlyCo2();
      emit(state.copyWith(status: CO2Status.success, data: res));
    } catch (e) {
      emit(state.copyWith(
        status: CO2Status.error,
      ));
    }
  }
}
