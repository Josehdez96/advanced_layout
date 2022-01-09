import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Container(
        alignment: Alignment.center,
        color: Colors.blue,
        child: Container(
          color: Colors.red,
          child: Center(
            heightFactor: 2,
            child: Container(
              color: Colors.yellow,
              height: 100,
              width: 100,
            ),
          ),
        ),
      ),
    );
  }
}
