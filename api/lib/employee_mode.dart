import 'dart:convert';

class User {
  Int id;
  String first_name;
  String last_name;

  User({this.id, this.first_name, this.last_name});

  factory User.createdUser(Map<String, dynamic> object){
    return User(id: object['id'].toString();
    first_name: object['first_name'] + " " + object['last_name']
    );
  }

  static Future<User> connectAPI(Int id) async
  {
    String apiURL = "http://localhost:5000/employee" + id;

    var apiResult = await http.get(apiURL);
    var jsonObject = json.decode(apiResult.body);
    var userData = (jsonObject as Map<String, dynamic>)['data'];

    return User.createdUser(userData);
  }
}