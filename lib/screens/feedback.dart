import 'package:flutter/material.dart';
import '../layout/grid_view.dart';



class FeedbackScreen extends StatelessWidget {
 const FeedbackScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  <Widget> [
              Text('Thank You!\n',
                style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 30,
                ) ,),

              Text('You have selected $selectedLibrary as the best library',
                style: TextStyle(
                  fontSize: 25.0,
                ),)
            ],
          ),
        ),
      ),
    );
  }
}






