import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:motify_v1/main_screen.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage(this.isLoading);
  final bool isLoading;
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  void _trySubmit() {
    final isValid = _formKey.currentState.validate();
    FocusScope.of(context).unfocus();

    if (isValid) {
      _formKey.currentState.save();
    }
  }

    final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xFF40C4FF), Color(0xFFEC407A)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 280.0, 70.0));
  String _userEmail = "";
  String _userPassword = "";
  String _userName = "";
  bool _isLogin=true;
  String _age ="";
  String _job="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
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
        title: Text("Welcome to Motify"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Form(
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RichText(text: TextSpan(
                  text: "MOTIFY",
                  style: TextStyle( fontSize: 60.0 ,fontWeight: FontWeight.bold,
                      foreground: Paint()
                        ..shader = linearGradient ),
                )),
                SizedBox(height: 60.0,),
                TextFormField(
                  key: ValueKey("email"),
                  keyboardType: TextInputType.emailAddress,
                  validator: (String value) {
                    if (value.isEmpty || !value.contains("@")) {
                      return "Please enter valid email";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      labelText: "E-mail Address",
                      labelStyle: TextStyle(color: Colors.blueAccent),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      )),
                  onSaved: (value) {
                    _userEmail = value;
                  },
                ),  SizedBox(height: 12.0),
                TextFormField(
                  key: ValueKey("password"),
                  obscureText: true,
                  validator: (String value) {
                    if (value.isEmpty || value.length < 7) {
                      return "Please enter text";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "**********",
                      labelStyle: TextStyle(color: Colors.blueAccent),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      )),
                  onSaved: (value) {
                    _userPassword = value;
                  },
                ),SizedBox(height: 12.0),
                if(!_isLogin)
                  TextFormField(
                    key: ValueKey("username"),
                    validator: (String value) {
                      if (value.isEmpty || value.length < 4) {
                        return "Please enter text";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: "Username",
                        labelStyle: TextStyle(color: Colors.blueAccent),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        )),
                    onSaved: (value) {
                      _userName = value;
                    },
                  ),
                SizedBox(height: 12.0),
                if(!_isLogin)
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Age",
                      labelStyle:  TextStyle(color: Colors.blueAccent),
                      border: OutlineInputBorder(),
                    ),
                    onSaved: (value){
                      _age= value;
                    },
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    maxLength: 2,
                    key: ValueKey("age"),
                    validator: (String value){
                      if(value.isEmpty){
                        return "Please enter age";
                      }
                      return null;
                    },
                  ),
                SizedBox(height: 6),
                if(!_isLogin)
                  TextFormField(
                    key: ValueKey("Hobbies"),
                    validator: (String value) {
                      if (value.isEmpty) {
                        return "Please enter text";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: "Hobbies",
                        labelStyle: TextStyle(color: Colors.blueAccent),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        )),
                    onSaved: (value) {
                      _job = value;
                    },
                  ),
                SizedBox(height: 12),



                  SizedBox(
                    width: 200.0,
                    height: 50.0,

                    child: RaisedButton(
                        textColor: Colors.white,
                        color: Colors.pink[300],
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0)),
                        child: Text(_isLogin ? "Login":"Sign up"),
                        onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => mainScreen()),

                        );_trySubmit();
                        }),
                  ),
                if(!widget.isLoading)
                  SizedBox(height :20.0),
                  FlatButton(
                    textColor:Colors.pinkAccent,
                    child: Text(_isLogin ? "Create new account" : "I already have an account"),
                    onPressed: (){setState(() {
                      _isLogin=!_isLogin;
                    });
                    },
                  )
              ],
            ),
          )),
    );
  }
  }

