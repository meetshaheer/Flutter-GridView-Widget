import 'package:flutter/material.dart';

class gridviewonly extends StatelessWidget {
  const gridviewonly({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1),
        children: [
          Container(
            color: Colors.amber[100],
            child: const Center(
              child: Text(
                "GridView",
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
