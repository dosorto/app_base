/*class Data<T> {
  String message;
  bool code;
  T data;
  Data({required this.message, required this.code, required this.data});

  Data.fromJson(Map<String, dynamic> json)
      : code = json["HasError"],
        message = json["exception"],
        data = json["data"]["user"];
}*/

import 'dart:convert';

class Data {
  int code;
  var data;
  String message;
  Data({required this.message, required this.code, required this.data});
  @override
  String toString() {
    // TODO: implement toString
    return "COD: " +
        this.code.toString() +
        " MSG: " +
        this.message +
        " DATA:" +
        this.data.toString();
  }
}
