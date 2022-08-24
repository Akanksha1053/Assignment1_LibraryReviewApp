import 'package:flutter/material.dart';
import 'constants.dart';

// import 'my_app.dart';
String selectedLibrary = '';

class GridAppearance extends StatefulWidget {
  GridAppearance({Key? key}) : super(key: key);

  @override
  State<GridAppearance> createState() => _GridAppearanceState();
}

class _GridAppearanceState extends State<GridAppearance> {
  int currentLibraryIndex = 0;

  final List<String> libraries = [
    'Flutter BLoC',
    'Provider',
    'GetX',
    'GetIt',
    'Riverpod',
    'Provider'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemCount: libraries.length,
        itemBuilder: (BuildContext ctx, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                currentLibraryIndex = libraries.indexOf(libraries[index]);
                selectedLibrary = libraries[index];
              });
            },
            child: Container(
              height: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: selectedLibrary == libraries[index]
                    ? kActiveColor
                    : kInactiveColor,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 2.0,
                    spreadRadius: 2.0,
                    offset: Offset(2.0, 2.0), // shadow direction: bottom right
                  )
                ],
              ),
              child: Text(libraries[index]),
            ),
          );
        },
      ),
    );
  }
}
