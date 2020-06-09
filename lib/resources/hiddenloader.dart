// import 'dart:convert';

// import 'package:flutter/services.dart';
// import 'package:myapp/resources/hidden.dart';

// class HiddenLoader{
//   final String hiddenPath;

//   HiddenLoader({this.hiddenPath});

//   Future<Hidden> load(){
//     return rootBundle.loadStructuredData<Hidden>(this.hiddenPath, (jsonStr) async {
//       final hidden = Hidden.fromJson(json.decode(jsonStr));
//       return hidden;
//     });
//   }
// }