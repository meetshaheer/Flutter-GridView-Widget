import 'package:flutter/material.dart';

class grid extends StatefulWidget {
  const grid({super.key});

  @override
  State<grid> createState() => _gridState();
}

class _gridState extends State<grid> {
  ///
  ///
  ///TextField Controllers
  TextEditingController addvaluecontroller = TextEditingController();
  //

  // Names list that appear in grid view containers
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

  ///method for Add names in gridview container
  ///
  addToGridViewContainer() {
    setState(() {
      names.add(addvaluecontroller.text);
      addvaluecontroller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(bottom: 10),
              height: 200,
              color: Colors.yellow[200],
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 20),
                    width: 200,
                    child: TextField(
                      controller: addvaluecontroller,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      addToGridViewContainer();
                    },
                    child: Text("Add Value"),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemCount: names.length,
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
          ],
        ),
      ),
    );
  }
}
