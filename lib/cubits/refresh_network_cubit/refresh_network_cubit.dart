import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'refresh_network_state.dart';

class RefreshNetworkCubit extends Cubit<RefreshNetworkState> {
  RefreshNetworkCubit() : super(RefreshNetworkInitial());

  
}
