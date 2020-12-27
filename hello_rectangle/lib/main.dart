import 'package:flutter/material.dart';

const _padding = EdgeInsets.all(16.0);

Widget helloRectangle(){
  return Container(
    color: Colors.blueAccent
  );
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello Rectangle',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello Rectangle'),
        ),
        body: HelloRectangle(),
      ),
    ),
  );
}

class HelloRectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: _padding,
        color: Colors.blue,
        height: 350.0,
        width: 250.0,
        alignment: Alignment.bottomRight,
          child: Text(
            'Hello, Beta!',
            style: TextStyle(fontSize: 30.0, color: Colors.white),
            textAlign: TextAlign.left,
          ),
        
      ),
    );
  }
}