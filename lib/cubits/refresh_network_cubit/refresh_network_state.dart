part of 'refresh_network_cubit.dart';

@immutable
abstract class RefreshNetworkState {}

class RefreshNetworkInitial extends RefreshNetworkState {}
class RefreshNetworkLoading extends RefreshNetworkState {}
class RefreshNetworkSuccess extends RefreshNetworkState {}
class RefreshNetworkFailure extends RefreshNetworkState {}


