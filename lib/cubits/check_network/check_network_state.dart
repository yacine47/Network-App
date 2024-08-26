part of 'check_network_cubit.dart';

@immutable
abstract class CheckNetworkState {}

class CheckNetworkInitial extends CheckNetworkState {}

class CheckNetworkLoading extends CheckNetworkState {}

class CheckNetworkSuccess extends CheckNetworkState {
  final List<NetworkModel> urls;

  CheckNetworkSuccess(this.urls);
}

class CheckNetworkFailure extends CheckNetworkState {
  final String errMessage;

  CheckNetworkFailure(this.errMessage);
}
