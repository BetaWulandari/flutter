import 'dart:convert';

class Employee {
  int id;
  String firstName;
  String lastName;
  String email;

  Employee({this.id, this.firstName, this.lastName, this.email});

  factory Employee.fromJson(Map<String, dynamic> map){
    return Employee(
      id: map["id"],
      firstName: map["first_name"],
      lastName: map["last_name"],
      email: map["email"]
    );

    Map<String, dynamic> toJson(){
      return{
        "id": id,
        "first_name": firstName,
        "las_name": lastName,
        "email": email
      };
    }

    @override
    String toString() {
      return 'Employee{id: $id, first_name: $firstName, last_name: $lastName, email: $email}';
    }
  }

  List<Employee> employeeFromJson(String, jsonData){
    final data = json.decode(jsonData);
    return List<Employee>.from(data.map((item) => Employee.fromJson(item)));
  }

  String employeeToJson(Employee data){
    final jsonData = data.toJson();
    return json.encode(jsonData);
  }
}