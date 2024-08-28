import 'package:network_app/models/network_model.dart';

abstract class NetworkRepo {
  Future<bool> checkPing(String ipAddress);

  Future<bool> checkWget(String url);

  Future<List<NetworkModel>> checkUrls();
}
