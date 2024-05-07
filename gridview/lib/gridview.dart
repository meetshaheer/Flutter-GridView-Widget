import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/box.dart';

class gridview extends StatelessWidget {
  const gridview({super.key});

  @override
  Widget build(BuildContext context) {
    List names = [
      'Ali',
      "Ahmed",
      "Tahami",
      "Saad",
      "Asad",
      "Waqas",
      "Essa",
      "Waqar"
    ];

    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(10),
          // child: GridView(
          //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 2, childAspectRatio: 1, crossAxisSpacing: 10),
          //   children: [
          //     Container(
          //       color: Colors.red,
          //     ),
          //     Container(
          //       color: Colors.red,
          //     )
          //   ],
          // ),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemCount: 30,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.amber[100],
                child: Center(
                  child: Text(
                    names[index],
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
