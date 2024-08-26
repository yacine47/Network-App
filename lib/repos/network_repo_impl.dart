import 'package:dio/dio.dart';
import 'package:network_app/models/network_model.dart';
import 'package:network_app/repos/network_repo.dart';
import 'package:path_provider/path_provider.dart';

class NetworkRepoImpl extends NetworkRepo {
  final Dio _dio = Dio();
  @override
  Future<bool> checkPing(String ipAddress) async {
    try {
      final response = await _dio.get(
        ipAddress,
        options: Options(
          receiveTimeout: const Duration(
              milliseconds: 5000), // Timeout for receiving response
          sendTimeout:
              const Duration(milliseconds: 5000), // Timeout for sending request
          validateStatus: (status) =>
              status! < 500, // Accept status codes less than 500
        ),
      );

      // Check if the response status code indicates success
      return response.statusCode == 200;
    } catch (e) {
      print('Ping failed: $e');
      return false; // Server is not reachable
    }
  }

  @override
  Future<bool> checkWget(String url) async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final filePath = '${directory.path}/file.zip';

      final response = await _dio.download(url, filePath);

      if (response.statusCode == 200) {
        print('File downloaded to: $filePath');
        return true;
      } else {
        print('Failed to download file: ${response.statusCode}');
        return false;
      }
    } catch (e) {
      print('Download failed: $e');
      return false;
    }
  }

  @override
  Future<List<NetworkModel>> checkUrls(List<String> urls) async {
    List<NetworkModel> urlCheckConnect = [];

    try {
      for (String url in urls) {
        final isWgetConnect = await checkWget(url);
        final isPingConnect = await checkPing(url);

        urlCheckConnect.add(
          NetworkModel(
            url: url,
            isWgetConnect: isWgetConnect,
            isPingConnect: isPingConnect,
          ),
        );
      }
    } catch (e) {
      print('Error occurred: $e');
    }

    return urlCheckConnect;
  }
}
