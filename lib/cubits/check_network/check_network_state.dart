part of 'check_network_cubit.dart';

@immutable
abstract class CheckNetworkState {}

class CheckNetworkInitial extends CheckNetworkState {}

class CheckNetworkLoading extends CheckNetworkState {}

class CheckNetworkSuccess extends CheckNetworkState {
  final List<NetworkModel> networks;

  CheckNetworkSuccess(this.networks);
}

class CheckNetworkFailure extends CheckNetworkState {
  final String errMessage;

  CheckNetworkFailure(this.errMessage);
}
