import 'package:flutter/material.dart';
import 'package:test_cases/screens/HomeScreen.dart';
import 'package:test_cases/screens/LogoScreen.dart';
//import 'package:test_cases/screens/oops.dart';
import 'package:test_cases/widgets/FilteredNewsListView.dart';

main() {
  // newsService().getNews();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:{
        "F":(context) => FilteredNewsListView(),
        "oops":(context)=>HomeScreen()
      } ,
      debugShowCheckedModeBanner: false,
      home: logoScreen()
    );
  }
}
