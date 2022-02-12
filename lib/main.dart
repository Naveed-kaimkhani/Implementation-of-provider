import 'package:flutter/material.dart';
import 'package:flutter_sm/HomePage.dart';
import 'package:flutter_sm/HomePageProvider.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
