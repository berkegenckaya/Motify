
import 'package:flutter/material.dart';
import 'package:motify_v1/MyProgress.dart';
import 'package:motify_v1/Profile.dart';
import 'package:motify_v1/Social.dart';


void main() => runApp(mainScreen());

class mainScreen extends StatelessWidget {


  static String _title = 'Motify';

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {


  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    ProfileApp(),
    friendProgress(),
    Progress(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Container(
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
        title: Text('MOTIFY',style: TextStyle(fontWeight: FontWeight.bold,
            shadows:[Shadow(
              color: Colors.black,
              blurRadius: 10,
              offset: Offset(5, 5)
            )] )),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_people_sharp),
            label: 'Social',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stacked_line_chart_sharp),
            label: 'My Progress',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.pinkAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}
