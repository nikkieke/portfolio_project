
import 'dart:convert';
import 'package:flutter/services.dart';

import '../model/user_details_model.dart';

class UserService{
  static Future<User> readJson() async{
    final String response = await rootBundle.loadString('assets/user_details.json');
    final data = await json.decode(response);
    return User.fromJson(data);
  }
}
