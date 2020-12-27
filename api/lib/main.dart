import 'package:api/employee_mode.dart';
import 'package:api/post_result_model.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult postResult = null;
  User user = null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("API Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text((postResult != null)
                  ? postResult.id + " first name" + postResult.first_name
                  : "empty data"),
              RaisedButton(
                onPressed: () {
                  PostResult.connectAPI("beta", "wulan", "beta@gmail.com").then((value){
                    postResult = value;
                    setState(() {
                      
                    });
                  });
                },
                child: Text("POST"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
