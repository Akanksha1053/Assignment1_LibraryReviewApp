import 'package:flutter/material.dart';
import '../layout/bottom_navigation.dart';
class HomeNavigator extends StatefulWidget {
  const HomeNavigator({Key? key}) : super(key: key);

  @override
  State<HomeNavigator> createState() => _HomeNavigatorState();
}

class _HomeNavigatorState extends State<HomeNavigator> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(
          child: Scaffold(


            bottomNavigationBar: BottomNavigation(),
          )
      ),
    );
  }
}
