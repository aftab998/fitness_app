import 'dart:async';

import 'package:flutter/material.dart';

import 'home_screen.dart';

class splashScreen extends StatefulWidget {
  splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  void initState(){
    super.initState();
    move();
  }

  void move(){
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      body:Stack(

        children: [

          Container(
            height:height,
            width: width,
            child:Image.asset('assets/images/splash.jpg',fit:BoxFit.cover,),
          ),
          Center(child: Text("Daily Workout",style:TextStyle(fontSize:32,fontWeight:FontWeight.w800,color:Colors.grey.shade400),),)






        ],
      ),
    );
  }
}
