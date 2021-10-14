import 'dart:convert';
import 'package:http/http.dart' as https;

class Registration{
  final String name;
  final String phone;
  final String email;
  final String password;
  final String confirmPassword;

  Registration({required this.email, required this.password, required this.name, required this.phone, required this.confirmPassword});

  Future<String> registerAPI() async{
    try{
      var url = Uri.parse("https://dubuz.com/api/register");
      var response = await https.post(url,
          body: ({
            'email': email,
            'password': password,
            'name': name,
            'phone': phone,
            'password_confirmation': confirmPassword,
          }));
      var jsonData;
      if(response.statusCode == 200){
        jsonData = jsonDecode(response.body);
        return jsonData;
      } else{
        return 'Error';
      }
    } catch (e) {
      return 'Error';
    }
  }
}

