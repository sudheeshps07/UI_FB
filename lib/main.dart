import 'package:appnew/_screen/_screen_spash.dart';
import 'package:appnew/faceBook/home.dart';
import 'package:flutter/material.dart';

//import 'faceBook/home.dart';

void main() => runApp(ScreenLogin());

class ScreenLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'facebook',
      home: ScreenSplash(),
    );
  }
}
