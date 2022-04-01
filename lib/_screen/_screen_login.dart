import 'package:appnew/images/assets.dart';

import 'package:appnew/faceBook/Avatars.dart';
import 'package:appnew/faceBook/home.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(ScreenLogin());

class ScreenLogin extends StatefulWidget {
  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  // final formkey = GlobalKey();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Avatars(
                displayAvatars: NillAvtar,
                displaysts: false,
                height: 100,
                width: 100,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Enter password',
                style: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      //print('Error ,enter username');
                      return 'please enter username';
                    }
                    return null;
                  },
                  controller: _usernameController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'user name',
                      labelText: 'user name'),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      // print('empty password');
                      return 'enter a valid password';
                    }
                    return null;
                  },
                  controller: _passwordController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'password',
                      labelText: 'password'),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                padding: const EdgeInsets.only(left: 25, right: 25),
                height: 40,
                width: MediaQuery.of(context).size.width,
                //color: Colors.blue,

                child: ElevatedButton(
                  onPressed: () {
                    // print('login clicked');
                    if (formkey.currentState!.validate()) {
                      checklogin(context);
                    } else {
                      print('date empty');
                    }
                  },
                  child: Text('Login'),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                'Forgotten Password?',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    ));
  }

  checklogin(BuildContext ctx) {
    final _username = _usernameController.text;
    final _userpassword = _passwordController.text;
    if (_username.length == _userpassword.length ) {
      print('user name and password is match');
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (ctx1) => Home()));
    } else {
      return ;
      //print('user name and password is not match');
    }
  }
}
