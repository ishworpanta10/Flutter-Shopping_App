import 'dart:async';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';
import 'package:shopping_cart_ui/home.dart';
import 'package:shopping_cart_ui/pages/login.dart';
import 'package:shopping_cart_ui/pages/signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: {
        "builder": (_) => LoginPage(),
        "signup": (_) => SignupPage(),
        "home": (_) => HomePage(),
        'login': (_) => LoginPage(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var duration = Duration(seconds: 4);
    return Timer(duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => LoginPage()));
  }

  final String back = "images/shopping_icon.jpg";
  @override
  void initState() {
    super.initState();
    startTime();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.greenAccent,
        body: Container(
          height: double.infinity,

          child: SingleChildScrollView(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 30.0,
                ),
                Image.asset(back),
                SizedBox(
                  height: 30,
                ),
                SpinKitThreeBounce(
                  color: Colors.white,
                  size: 100.0,
                ),
              ],
            ),
          ),
          // decoration: BoxDecoration(

          //     image: DecorationImage(

          //         image: AssetImage(
          //           back,
          //         ),

          //         fit: BoxFit.cover)),
        ));
  }
}
