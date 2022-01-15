import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: FractionallySizedBox(
          widthFactor: 0.7,
          child: GridView.count(
            shrinkWrap: true,
            crossAxisSpacing: 3,
            mainAxisSpacing: 3,
            crossAxisCount: 3,
            children: [
              Container(
                color: Colors.white,
                child: Center(
                  child: Text(
                    'X',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      inherit: false,
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
              ),
              Container(
                color: Colors.white,
              ),
              Container(
                color: Colors.white,
              ),
              Container(
                color: Colors.white,
              ),
              Container(
                color: Colors.white,
              ),
              Container(
                color: Colors.white,
              ),
              Container(
                color: Colors.white,
              ),
              Container(
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   debugShowCheckedModeBanner: false,
    //   theme: ThemeData.light(),
    //   home: Container(
    //     alignment: Alignment.center,
    //     color: Colors.blue,
    //     child: Container(
    //       color: Colors.red,
    //       child: Align(
    //         alignment: const Alignment(0.7, 0),
    //         heightFactor: 2,
    //         child: Container(
    //           color: Colors.yellow,
    //           height: 100,
    //           width: 100,
    //           child: Center(
    //             child: GridView.count(
    //               crossAxisSpacing: 1,
    //               // mainAxisSpacing: 2,
    //               crossAxisCount: 3,
    //               children: [
    //                 Container(
    //                   color: Colors.amber,
    //                 ),
    //                 Container(
    //                   color: Colors.red,
    //                 ),
    //                 Container(
    //                   color: Colors.green,
    //                 ),
    //                 Container(
    //                   color: Colors.lightBlue,
    //                 ),
    //                 Container(
    //                   color: Colors.blue,
    //                 ),
    //                 Container(
    //                   color: Colors.pink,
    //                 ),
    //                 Container(
    //                   color: Colors.purple,
    //                 ),
    //                 Container(
    //                   color: Colors.deepOrange,
    //                 ),
    //                 Container(
    //                   color: Colors.deepPurple,
    //                 ),
    //               ],
    //             ),
    //             // child: Text(
    //             //   'hola',
    //             //   style: TextStyle(
    //             //     inherit: false,
    //             //     fontSize: 32,
    //             //     color: Colors.black,
    //             //   ),
    //             // ),
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
