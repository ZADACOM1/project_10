import 'package:flutter/material.dart';

class Deadline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Deadline and Success"),
      ),
      body: ListView(
        children: [
          Text("FULL ARTIKEL"),
          SizedBox(
            height: 23,
          ),
          Expanded(
            child: Image.asset('images/2c6b401eecb5163f8ea322b79114ad67.jpg'),
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.keyboard_return_outlined),
            label: Text("back"),
          ),
        ],
      ),
    );
  }
}
