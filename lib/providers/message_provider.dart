import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MessageProvider with ChangeNotifier {
  List<dynamic> _messages = [];

  List<dynamic> get messages => _messages;

  Future<void> loadMessages() async {
    final String response = await rootBundle.loadString('lib/data/datamessage.json');
    _messages = json.decode(response);
    notifyListeners();
  }
}
