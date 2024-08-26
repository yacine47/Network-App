import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:network_app/functions/get_urls.dart';
import 'package:network_app/models/network_model.dart';
import 'package:network_app/repos/network_repo.dart';

part 'check_network_state.dart';

class CheckNetworkCubit extends Cubit<CheckNetworkState> {
  CheckNetworkCubit(this.networkRepo) : super(CheckNetworkInitial());
  List<String> urls = getUrls();
  final NetworkRepo networkRepo;
  Future<void> checkUrls() async {
    try {
      emit(CheckNetworkLoading());
      var result = await networkRepo.checkUrls(urls);

      emit(CheckNetworkSuccess(result));
    } catch (e) {
      print(e);

      emit(CheckNetworkFailure(e.toString()));
    }
  }
}
