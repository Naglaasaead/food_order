import 'package:flutter/material.dart';

import 'Application/Favourt.dart';
import 'Application/FoodOffer.dart';
import 'Application/burger.dart';
import 'Application/kebab.dart';
import 'Application/pizaa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
      /*  "/": (_) => HelloConvexAppBar(),
        "/bar": (BuildContext context) => DefaultAppBarDemo(),
        "/custom": (BuildContext context) => CustomAppBarDemo(),
        "/fab": (BuildContext context) => ConvexButtonDemo(),*/
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:FoodOfer(),
      //home: Favourt(),
      //home: Burger(),
      //home: Pizza(),
     // home: Kebab(),
    );
  }
}
