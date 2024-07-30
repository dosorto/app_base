import 'package:myapp/models/data.model.dart';
import 'package:myapp/models/user.model.dart';
import 'package:myapp/services/user.service.dart';

Future login_controller(String email, String pass, context) async {
  Data data = (await login_service(email, pass));
  switch (data.code) {
    case 200:
      {
        User user = User.fromJson(data.data);
        print(user.nombre);
      }
    case 500:
      {
        print("error en el servidor");
      }
    case 203:
      {
        print("sin Acceso: token sin acceso");
      }
    default:
      {
        print("algo salio mal");
      }
  }
}
