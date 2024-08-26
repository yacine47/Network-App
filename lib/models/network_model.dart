class NetworkModel {
  final String url;

  final bool isPingConnect;
  final bool isWgetConnect;

  NetworkModel({
    required this.url,
    required this.isWgetConnect,
    required this.isPingConnect,
  });
}
