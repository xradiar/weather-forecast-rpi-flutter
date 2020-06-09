import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

Future<Map<String,dynamic>> loadAsset() async {
  WidgetsFlutterBinding.ensureInitialized();
  String  assetKey = await rootBundle.loadString('hidden.json');

  return json.decode(assetKey);
}