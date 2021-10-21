import 'package:flutter/material.dart';

class addHabit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(flexibleSpace: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Colors.pinkAccent,
                Colors.lightBlueAccent,
              ]
          )
      ),
    ),
      centerTitle: true,
      title: Text("Add New Habits"),
    ),
    );
  }
}
