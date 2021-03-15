import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:radyo_zulfikar/Pages/Error.dart';
import 'package:radyo_zulfikar/Pages/HomePage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

// bool _connectStatus = false;

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    // connectCheck();

    super.initState();
    Timer(Duration(seconds: 5), connectCheck);
  }

  connectCheck() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomePage()));
    } else {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => Hata()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage('assets/splash.png'),
              )),
        ),
      ),
    );
  }

  buildSplashScreen() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
  }
}
