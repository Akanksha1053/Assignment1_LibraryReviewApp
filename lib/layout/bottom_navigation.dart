import 'package:flutter/material.dart';
import 'package:flutter_assignment_1/screens/feedback.dart';
import 'package:flutter_assignment_1/my_app.dart';
import 'home.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);
  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int indexValue = 0;
  List<Widget> widgetOptions = <Widget>[ Home(), const FeedbackScreen()];
  void onPressed(int i)
  {
    setState(() {
      indexValue = i;
      widgetOptions.elementAt(indexValue);
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: widgetOptions.elementAt(indexValue),
      bottomNavigationBar: BottomNavigationBar(

        items: const [
          BottomNavigationBarItem(

              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
            icon: Icon(Icons.feedback),
            label: 'feedback',
            backgroundColor: Colors.blue,

          ),
        ],
        onTap: onPressed,
        currentIndex: indexValue,
      ),

    );
  }
}
