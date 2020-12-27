import 'dart:convert';
import 'dart:io';

class PostResult {
  Int id;
  String first_name;
  String last_name;
  String email

  PostResult({this.id, this.first_name, this.last_name, this.email});

  factory PostResult.createdPostResult(Map<String, dynamic> object) {
    return PostResult(
      id: object['id'],
      first_name: object['first_name'],
      last_name: object['last_name'],
      email: object['email']
    );
  }

  static Future<PostResult> connectAPI(String first_name, String last_name, String email) async{
    String apiURL = "http://localhost:5000/employee";

   var apiResult = await http.post(apiURL, body: {
      "first_name": first_name,
      "last_name": last_name,
      "email": email
    });

    var jsonObject = json.decode(apiResult.body);

    return PostResult.createdPostResult(jsonObject);
  }
}
