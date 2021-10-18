import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview/web.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,


      home: SplashScreen1(),
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),

    );
  }
}
class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({Key? key}) : super(key: key);

  @override
  _SplashScreen1State createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {

  @override
  void initState() {

    super.initState();
    Timer(
      Duration(seconds: 2), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>WebViewClass())),
    );

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,

      child: Center(


        child:Column(

          children: [
            //Image.asset('assets/logo.jpg'),
            SizedBox(height: 200),
            //Text("Welcome To  HUB", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
            Padding(padding: EdgeInsets.only(bottom:100,)),
            Image.asset('assets/220px-UET_Taxila_logo.svg.png'),
            //SizedBox(height: 50),

            // CircularProgressIndicator(
            //   backgroundColor: Colors.white,
            //
            // ),
            Padding(padding: EdgeInsets.only(bottom:150,)),
            //Text("version.1.0.0", style: TextStyle(fontSize: 11, color: Colors.black26),),
          ],
        ),

      ),

    );
  }
}





