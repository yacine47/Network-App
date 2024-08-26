import 'package:hive_flutter/hive_flutter.dart';
import 'package:network_app/constants.dart';

List<String> getUrls() {
  // Open the Hive box
  final box = Hive.box(kUrlsBox);
  // Retrieve the list of strings from the box
  final List<dynamic>? urls = box.get(kUrls) as List<dynamic>?;

  // Convert to List<String> if not null
  return urls?.cast<String>() ?? [];
}
