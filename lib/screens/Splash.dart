import 'package:flutter/material.dart';
import 'homescreen.dart';

class Splash extends StatefulWidget {
  const Splash ({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateFunction();
  }

  _navigateFunction()async{
    await Future.delayed(const Duration(milliseconds: 1500),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>HomeNavigator()));

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.blue,
          child: const Center(
            child: Text('cod;tas',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color: Colors.white
            ),),
          ),
        ),
      ),
    );
  }
}
