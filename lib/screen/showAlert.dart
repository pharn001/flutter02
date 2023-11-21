import 'package:flutter/material.dart';

class Myalert extends StatelessWidget {
  const Myalert({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alert')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("close"),
                              )
                            ],
                            title: Text("close"),
                            contentPadding: EdgeInsets.all(100.0),
                            content: Text("this is altertDialog"),
                          ));
                },
                
                child: Text('AlertDiallog'))
          ],
        ),
      ),
    );
  }
}
