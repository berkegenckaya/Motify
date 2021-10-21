import 'package:flutter/material.dart';

class findFriends extends StatelessWidget {
  String _email;
  final _formKey = GlobalKey<FormState>();
  final fieldText = TextEditingController();
  bool value=false;
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
        title: Text("Find Your Friends"),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextFormField(
                  validator: (String value){
                    if(value.isEmpty){
                      return "Please enter a username";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    fillColor: Colors.grey,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent)
                    ),
                    labelText: "Enter Your Friends Username",
                  ),

                ),
              ),
            SizedBox(height: 30,),
            RaisedButton(
                child: const Text('Send Friend Request'),
                color: Colors.purpleAccent,
                    onPressed: () {
                  fieldText.clear();
                      if (_formKey.currentState.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.green,
                            content: const Text('Friend Request Sent',style : TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            )),
                          ),
                        );
                      }else{ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.red,
                        content: Text("You Need To Enter Valid Username" ,
                            style : TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            )
                        ),
                      ));
                      }
              },
            ),
                ],
              ),
            ),


          ),

    );
  }
}
