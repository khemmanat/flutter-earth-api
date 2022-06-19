part of 'co2_bloc.dart';

enum CO2Status {
  initial,
  loading,
  success,
  error,
}

extension CO2StatusX on CO2Status{
  bool get isInitial => this == CO2Status.initial;
  bool get isLoading => this == CO2Status.loading;
  bool get isSuccess => this == CO2Status.success;
  bool get isError => this == CO2Status.error;
}

@immutable
class Co2State {
  final CO2Status status;

  const Co2State({this.status = CO2Status.initial});

  Co2State copyWith({
    CO2Status? status,
  }){
    return Co2State(status: status ?? this.status);
  }

  @override
  List<Object> get props => [status];
}
