import 'package:flutter/material.dart';
import 'grid_view.dart';
import 'bottom_navigation.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        title: const Text(
          'Welcome to the world of flutter',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
                color: Colors.white10,
                height: 100,
                child: const Text(
                  'Choose the best state management library',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                )),
            Container(
              height: MediaQuery.of(context).size.height/1.5,
              child: GridAppearance(),
            ),
          ],
      ),
    );
  }
}
