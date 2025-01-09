import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UserProvider with ChangeNotifier {
  Map<String, dynamic> _user = {};

  Map<String, dynamic> get user => _user;

  Future<void> loadUser() async {
    final String response = await rootBundle.loadString('lib/data/datauser.json');
    _user = json.decode(response);
    notifyListeners();
  }
}
