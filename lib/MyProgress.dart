import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motify_v1/AddHabit.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Progress extends StatefulWidget {
  @override
  _ProgressState createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  double progress = 0.0;
  double progress2=0.0;
  bool isChecked = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;
  bool isChecked6 = false;
  bool isChecked7 = false;
  bool buttoncheck = false;

  void _progressCalculate(bool )=>setState((){
    progress=progress+0.2;
    if(progress>=1){
      progress=1;
    }
  }
  );
  void _progressDesc(bool)=>setState((){
    progress=progress-0.2;
        if(progress<=0){
          progress=0;
        }
      }
  );
  void _progressCalculate2(bool )=>setState((){
    progress2=progress2+0.33;
    if(progress2>=1){
      progress2=1;
    }
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          padding: EdgeInsets.all(8.0),
          children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.purpleAccent,
                  )
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left :20.0,top:10,bottom: 10),
                          child: Text("- Drink 5 cup of water -"),),
                        Padding(padding:EdgeInsets.only(left :100.0,top:10,bottom: 10),
                          child: Text("DAILY",style: TextStyle(fontWeight: FontWeight.bold),),),
                      ],
                    ),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 20,top: 10,bottom: 20),
                        child: LinearPercentIndicator(
                          width: 200.0,
                          lineHeight: 14.0,
                          percent: progress,
                          backgroundColor: Colors.pink[100],
                          progressColor: Colors.blue,
                        ),
                      ),

                    ],

                  ),
                    Row(
                      children: [
                        Checkbox(value: isChecked,
                          activeColor: Colors.purpleAccent,
                      onChanged: (value) {
                        setState(() {
                          isChecked = !isChecked;
                          _progressCalculate(isChecked);
                        });
                      },
                    ),
                        Checkbox(value: isChecked1,
                          activeColor: Colors.purpleAccent,
                          onChanged: (value) {
                            setState(() {
                              isChecked1 = !isChecked1;
                              _progressCalculate(isChecked1);
                            });
                          },
                        ),
                        Checkbox(value: isChecked2,
                          activeColor: Colors.purpleAccent,
                          onChanged: (value) {
                            setState(() {
                              isChecked2 = !isChecked2;
                              _progressCalculate(isChecked2);
                            });
                          },
                        ),
                        Checkbox(value: isChecked3,
                          activeColor: Colors.purpleAccent,
                          onChanged: (value) {
                            setState(() {
                              isChecked3 = !isChecked3;
                              _progressCalculate(isChecked3);
                            });
                          },
                        ),
                        Checkbox(value: isChecked4,
                          activeColor: Colors.purpleAccent,
                          onChanged: (value) {
                            setState(() {
                              if(isChecked4==true){
                                _progressDesc(isChecked4);
                              }
                              isChecked4 = !isChecked4;
                              _progressCalculate(isChecked4);
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
          SizedBox(height: 10.0,),
          Container(decoration: BoxDecoration(
              border: Border.all(
                color: Colors.purpleAccent,
              )
          ),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left :20.0,top:10,bottom: 10),
                      child: Text("- Go to gym 3 times a week -"),),
                    Padding(padding:EdgeInsets.only(left :60.0,top:10,bottom: 10),
                      child: Text("WEEKLY",style: TextStyle(fontWeight: FontWeight.bold),),),
                  ],
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 20,top: 10,bottom: 20),
                      child: LinearPercentIndicator(
                        width: 200.0,
                        lineHeight: 14.0,
                        percent: progress2,
                        backgroundColor: Colors.pink[100],
                        progressColor: Colors.blue,
                      ),
                    ),

                  ],

                ),
                Row(
                  children: [
                    Checkbox(value: isChecked5,
                      activeColor: Colors.purpleAccent,
                      onChanged: (value) {
                        setState(() {
                          isChecked5 = !isChecked5;
                          _progressCalculate2(isChecked5);
                        });
                      },
                    ),
                    Checkbox(value: isChecked6,
                      activeColor: Colors.purpleAccent,
                      onChanged: (value) {
                        setState(() {
                          isChecked6 = !isChecked6;
                          _progressCalculate2(isChecked6);
                        });
                      },
                    ),
                    Checkbox(value: isChecked7,
                        activeColor: Colors.purpleAccent,
                      onChanged: (value) {
                        setState(() {
                          isChecked7 = !isChecked7;
                          _progressCalculate2(isChecked7);
                        });
                      },
                    ),
                  ],
                )
              ],
            ),

          ),
            SizedBox(height: 10.0,),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.purpleAccent,
                  )
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left :20.0,top:10,bottom: 10),
                        child: Text("- Read a book everyday -"),),
                      Padding(padding:EdgeInsets.only(left :100.0,top:10,bottom: 10),
                        child: Text("DAILY",style: TextStyle(fontWeight: FontWeight.bold),),),
                    ],

                  ),
                  Row(
                    children: [
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: ElevatedButton(onPressed: (){
                         setState(() {
                           buttoncheck=true;
                         }
                         );
                         showDialog<String>(
                             context: context,
                             builder: (BuildContext context) => AlertDialog(
                              title: const Text('Congratulations'),
                              content: const Text('You have finished your task')));
                          }, child: Text("If you do it please enter button "),style: ButtonStyle(
                         backgroundColor:MaterialStateProperty.all<Color>(Colors.pink[200]),
                       ),
                       ),
                     ),
                      Padding(padding:EdgeInsets.all(8.0),
                        child: Checkbox(value: buttoncheck, activeColor: Colors.purpleAccent
                          ,onChanged: (bool value) { setState(() {
                        });  },
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.pink[200],
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => addHabit()),);
        },
      ),
    );

}
}
