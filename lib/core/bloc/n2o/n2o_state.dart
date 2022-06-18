part of 'n2o_bloc.dart';

enum N2oStatus {
  initial,
  loading,
  success,
  error,
}

extension N2oStatusX on N2oStatus{
  bool get isInitial => this == N2oStatus.initial;
  bool get isLoading => this == N2oStatus.loading;
  bool get isSuccess => this == N2oStatus.success;
  bool get isError => this == N2oStatus.error;
}

@immutable
class N2oState extends Equatable{
  final N2oStatus status;

  const N2oState({this.status = N2oStatus.initial});

  N2oState copyWith({
    N2oStatus? status,
  }){
    return N2oState(status: status ?? this.status);
  }

  @override
  List<Object> get props => [status];
}