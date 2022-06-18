part of 'sf6_bloc.dart';

enum SF6Status {
  initial,
  loading,
  success,
  error,
}

extension SF6StatusX on SF6Status{
  bool get isInitial => this == SF6Status.initial;
  bool get isLoading => this == SF6Status.loading;
  bool get isSuccess => this == SF6Status.success;
  bool get isError => this == SF6Status.error;
}

@immutable
class Sf6State extends Equatable {
  final SF6Status status;

  const Sf6State({this.status = SF6Status.initial});

  Sf6State copyWith({
    SF6Status? status,
  }){
    return Sf6State(status: status ?? this.status);
  }

  @override
  List<Object> get props => [status];
}