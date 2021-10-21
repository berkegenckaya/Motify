import 'package:flutter/material.dart';
import 'package:motify_v1/FindFriends.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class friendProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          padding: EdgeInsets.all(8),
          children: [
            Divider(
              color: Colors.black,
              height: 10,
              thickness: 2,
              indent: 5,
              endIndent:5,
            ),
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("ozgebasaklacin" , style: TextStyle(fontSize: 15.0,
                        fontWeight: FontWeight.bold,color: Colors.black),),
                  ),
                Padding(
                  padding: const EdgeInsets.only(left:25.0,right: 10.0),
                  child: LinearPercentIndicator(
                    width: 160.0,
                    lineHeight: 14.0,
                    percent: 0.57,
                    backgroundColor: Colors.pink[100],
                    progressColor: Colors.blue,
                  ),
                ),
                  Text("%57")
                ],

              ),
              height: 60,
              color: Colors.grey[300],
            ),
            Divider(
              color: Colors.black,
              height: 10,
              thickness: 2,
              indent: 5,
              endIndent: 5,
            ),
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("ozanserkansahin" , style: TextStyle(fontSize: 15.0,
                        fontWeight: FontWeight.bold,color: Colors.black),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:15.0,right: 10.0),
                    child: LinearPercentIndicator(
                      width: 160.0,
                      lineHeight: 14.0,
                      percent: 0.3,
                      backgroundColor: Colors.pink[100],
                      progressColor: Colors.blue,
                    ),
                  ),
                  Text("%30")
                ],
              ),
              height: 60,
              color: Colors.grey[300],
            ),
            Divider(
              color: Colors.black,
              height: 10,
              thickness: 2,
              indent: 5,
              endIndent: 5,
            ),
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("dorukgenckaya123" , style: TextStyle(fontSize: 15.0,
                        fontWeight: FontWeight.bold,color: Colors.black),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:1.0,right: 10.0),
                    child: LinearPercentIndicator(
                      width: 160.0,
                      lineHeight: 14.0,
                      percent: 0.73,
                      backgroundColor: Colors.pink[100],
                      progressColor: Colors.blue,
                    ),
                  ),
                  Text("%73")
                ],

              ),
              height: 60,
              color: Colors.grey[300],
            ),
            Divider(
              color: Colors.black,
              height: 10,
              thickness: 2,
              indent: 5,
              endIndent: 5,
            ),
          ],
        ),

      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.pink[200],
        onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => findFriends()),);
        },
      ),

    );
  }
}
