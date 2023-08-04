

import 'package:flutter/material.dart';
import 'package:my_flutter_project/mobile.dart';
import 'package:my_flutter_project/otp.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'mobile',
    routes: {
      'mobile': (context) => MyMobile(),
      'otp':(context)=>MyOtp()
    }
  ));
}







// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
//         useMaterial3: true,
//       ),
//       home:  MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget{
//
//   @override
//   State<StatefulWidget> createState() => MyHomeState();
//
// }
//
// class MyHomeState extends State<MyHomePage>{
//   var count=0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title:Text ("Sangeet App Bar"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("Count is : $count"),
//             ElevatedButton(onPressed: (){
//               setState(() {
//                 count++;
//               });
//             },child: Text("Increment"),)
//           ],
//         ),
//       )
//
//     );
//   }
//
// }




