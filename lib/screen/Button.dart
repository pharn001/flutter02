import 'package:flutter/material.dart';

class Mybutton extends StatefulWidget {
  const Mybutton({super.key});

  @override
  State<Mybutton> createState() => _MybuttonState();
}

class _MybuttonState extends State<Mybutton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button"),
      ),
      body: Center(
          child: Column(
        children: [
          TextButton(
              onPressed: () {
                print("Button");
              },
              child: Text("Button")),
          ElevatedButton(onPressed: () {}, child: Text("Elevated")),
          OutlinedButton(onPressed: () {}, child: Text("Outlined")),
          FloatingActionButton(
              onPressed: () {}, child: Icon(Icons.ac_unit_outlined)),
        ],
      )),
    );
  }
}
