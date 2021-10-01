import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timer_state_managment/counter.dart';
import 'package:timer_state_managment/home.dart';

void main() {
  runApp(
   MultiProvider(
     providers: [
       ChangeNotifierProvider(create: (context) => Counter())
     ],
     child: const MyApp(),
   )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Add provider at the root of the App
    // it will listen for all changes that will
    // occur inside the app

    return MaterialApp(
      home: HomeScreen(),
    );
    /* Another way for providing root level provider */
   // return ChangeNotifierProvider(
   //     create: (_) => Counter(),
   //   child: Builder(
   //     builder: (BuildContext context){
   //       return const MaterialApp(
   //         home: HomeScreen(),
   //       );
   //     },
   //   ),
   // );
  }
}