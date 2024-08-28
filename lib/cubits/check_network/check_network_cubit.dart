import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:network_app/functions/get_urls.dart';
import 'package:network_app/models/network_model.dart';
import 'package:network_app/repos/network_repo.dart';

part 'check_network_state.dart';

class CheckNetworkCubit extends Cubit<CheckNetworkState> {
  CheckNetworkCubit(this.networkRepo) : super(CheckNetworkInitial()) {
    _startRefreshing();
  }

  final NetworkRepo networkRepo;
  Timer? _timer;
  final List<String> urls = getUrls(); // Replace with your method to get URLs

  Future<void> checkUrls() async {
    try {
      emit(CheckNetworkLoading());
      var result = await networkRepo.checkUrls();
      emit(CheckNetworkSuccess(result));
    } catch (e) {
      print(e);
      emit(CheckNetworkFailure(e.toString()));
    }
  }

  void _startRefreshing() {
    _timer = Timer.periodic(
      const Duration(minutes: 1), // Set your desired refresh interval here
      (timer) async {
        await checkUrls(); // Refresh network status
      },
    );
  }

  @override
  Future<void> close() {
    _timer?.cancel(); // Cancel the timer when the cubit is closed
    return super.close();
  }
}
