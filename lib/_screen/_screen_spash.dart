import 'package:appnew/_screen/_screen_login.dart';
import 'package:appnew/faceBook/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(ScreenSplash());

class ScreenSplash extends StatefulWidget {
  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    goTologin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Text(
          'f',
          style: TextStyle(
              fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }

  Future<void> goTologin() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => ScreenLogin(),
      ),
    );
  }

}
