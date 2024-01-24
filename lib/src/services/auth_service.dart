import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthService with ChangeNotifier {
  String _name = 'Dairo';

  String get name => _name;

  set name(String name) {
    _name = name;
    notifyListeners();
  }
}
