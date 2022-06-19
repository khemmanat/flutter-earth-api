part of 'co2_bloc.dart';

enum CO2Status {
  initial,
  loading,
  success,
  error,
}

extension CO2StatusX on CO2Status {
  bool get isInitial => this == CO2Status.initial;
  bool get isLoading => this == CO2Status.loading;
  bool get isSuccess => this == CO2Status.success;
  bool get isError => this == CO2Status.error;
}

class Co2State {
  final CO2Status status;
  final String? message;
  final List<CO2Model>? data;

  const Co2State({
    this.status = CO2Status.initial,
    this.message,
    this.data,
  });

  Co2State copyWith({
    CO2Status? status,
    String? message,
    List<CO2Model>? data,
  }) {
    return Co2State(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }

  @override
  List<Object> get props => [status];
}
