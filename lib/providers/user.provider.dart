import 'package:flutter/material.dart';
import 'package:myapp/models/user.model.dart';

class UserProvider with ChangeNotifier {
  bool _loading = false;
  User? _usuario;

  bool get loading => _loading;

  //get usuario => null;
  User? get usuario => _usuario;

  set loading(bool value) {
    _loading = value;
    notifyListeners();
  }

  set usuario(User? usuario) {
    _usuario = usuario;
    notifyListeners();
  }
}
