import 'package:flutter/material.dart';
import 'package:radyo_zulfikar/Pages/SplashScreen.dart';

class Hata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white12,
          child: Container(
              child: Column(
            children: [
              Spacer(),
              Expanded(
                child: Container(
                  child: Image.asset(
                    'assets/wifi.png',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'İnternet Yok',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        'İnternet bağlantınızı kontrol ettikten sonra tekrar deneyiniz.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              GestureDetector(
                onTap: () => Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => SplashScreen())),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(vertical: 10),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                    'Tekrar Dene',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  )),
                ),
              ),
              Spacer()
            ],
          )),
        ),
      ),
    );
  }
}
