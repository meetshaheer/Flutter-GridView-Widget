import 'package:flutter/material.dart';

class gridview extends StatelessWidget {
  const gridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(10),
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1, crossAxisSpacing: 10),
            children: [
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.red,
              )
            ],
          ),
        ),
      ),
    );
  }
}
