library RequestToServer;
import 'dart:convert';
import 'UserClass.dart';
import 'package:http/http.dart' as http;



User takeData(String id,String retrait, String depot, String pwd, String mail){
  User user = User();
  user.id = id;
  user.depot = depot;
  user.retrait = retrait;
  user.pwd = pwd;
  user.mail = mail;
  return (user);
}


 sendDataToServer(User user) async {
  bool responseServerbool = false;
  String url='http://172.16.8.76:3000/api/data';
  String jsonBody = json.encode(user.toJson());
  http.Response response = await http.post(
    Uri.parse(url),
    headers: {'Content-Type': 'application/json'},
    body: jsonBody,
  );
  if (response.statusCode == 200)
    {

       print(response.body);

    }


}