part of 'n2o_bloc.dart';

enum N2OStatus {
  initial,
  loading,
  success,
  error,
}

extension N2oStatusX on N2OStatus{
  bool get isInitial => this == N2OStatus.initial;
  bool get isLoading => this == N2OStatus.loading;
  bool get isSuccess => this == N2OStatus.success;
  bool get isError => this == N2OStatus.error;
}

@immutable
class N2oState extends Equatable{
  final N2OStatus status;

  const N2oState({this.status = N2OStatus.initial});

  N2oState copyWith({
    N2OStatus? status,
  }){
    return N2oState(status: status ?? this.status);
  }

  @override
  List<Object> get props => [status];
}