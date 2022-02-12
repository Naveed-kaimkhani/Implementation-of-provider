import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_sm/HomePageProvider.dart';
import 'package:provider/provider.dart';
class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: ChangeNotifierProvider<HomePageProvider>(
            create: (context) => HomePageProvider(),
            child: Consumer<HomePageProvider>(
              builder: (context,provider,child){
                return Center(
                  child: Column(
              children: [
                  Text(provider.eligibilityMessage.toString(),style: TextStyle(
                    color: (provider.isEligible==true)?Colors.green:Colors.red,
                  ),),
                  TextField(
                    onChanged: (value) => provider.checkEligibility(int.parse(value)),
            decoration: InputDecoration(
              hintText: "Enter Your Age",
              hintStyle: TextStyle(
                  color: Colors.grey,
                  fontStyle: FontStyle.italic,
              ),
            ),
          ),
    
              ],
            ),
                );
              }
              )
          ),
        ))
    );
  }
}