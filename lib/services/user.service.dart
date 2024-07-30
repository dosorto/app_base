import 'package:myapp/constants.dart';
import 'package:myapp/models/data.model.dart';
import 'package:myapp/models/user.model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<Data> login_service(String email, String passwd) async {
  var client = http.Client();
  try {
    var response = await client.post(Uri.parse(API_URL + "/login"),
        //http://3.137.14.254/server/api/login
        body: {'email': email, 'password': passwd});
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
    //bool hasError = decodedResponse['hasError'];
    Data data = Data(
        code: response.statusCode,
        message: decodedResponse["message"] ?? "",
        data: decodedResponse["data"]);
    print(data.toString());
    return data;
  } finally {
    client.close();
  }
}
