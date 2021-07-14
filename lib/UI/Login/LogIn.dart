import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store/UI/ForgetPassword/ForgetPassword.dart';
import 'package:store/UI/MainHome/MainHome.dart';
import 'package:store/UI/Signup/SignUp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:toast/toast.dart';


class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  var email = TextEditingController();
  var password = TextEditingController();

  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(30, 31, 40, 0.8),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 31, 40, 0),
        elevation: 0,
        leading: IconButton(
          color: Colors.white,
          iconSize: 24,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onPressed: () {
            setState(() {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => signUpScreen()));
            });
          },
          icon: Icon(Icons.arrow_back_ios_rounded),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.bold,
                      fontSize: 34,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  //email field
                  Container(
                    decoration: new BoxDecoration(
                        color:Color.fromRGBO(30, 31, 40, 2),
                        borderRadius: BorderRadius.circular(8.0)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20,0,20,0),
                      child: TextFormField(
                        cursorColor: Colors.white,
                        controller: email,
                        maxLines: 1,
                        decoration: new InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(
                            color: Colors.white70,
                            fontFamily: 'Metropolis',
                            letterSpacing: 0.8,
                          ),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                        validator: (val) {
                          if (val.length == 0) {
                            return "Name cannot be empty";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.emailAddress,
                        style: new TextStyle(
                          fontFamily: "Poppins",
                          color: Colors.white,
                          wordSpacing: 2,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  //password field
                  Container(
                    decoration: new BoxDecoration(
                        color:Color.fromRGBO(30, 31, 40, 2),
                        borderRadius: BorderRadius.circular(8.0)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20,0,20,0),
                      child: TextFormField(
                        cursorColor: Colors.white,
                        controller: password,
                        maxLines: 1,
                        obscureText: true,
                        decoration: new InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(
                            color: Colors.white70,
                            fontFamily: 'Metropolis',
                            letterSpacing: 0.8,
                          ),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                        validator: (val) {
                          if (val.length == 0) {
                            return "Name cannot be empty";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.visiblePassword,
                        style: new TextStyle(
                          fontFamily: "Poppins",
                          color: Colors.white,
                          wordSpacing: 2,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot your password ?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_right_alt_outlined),
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        color:Colors.pink,
                        iconSize: 30,
                        onPressed: () {
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPasswordScreen()),);
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  //Button
                  Container(
                    width: double.infinity,
                    decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.pink

                    ) ,
                    child: FlatButton(
                      onPressed: () {
                        if(email.text.isEmpty||password.text.isEmpty)
                        {
                          //dismiss the keyboard to make the toast invisible
                          FocusScope.of(context).requestFocus(FocusNode());
                          Toast.show('Please enter valid data', context, duration: Toast.LENGTH_LONG, gravity:  Toast.BOTTOM);
                        }else
                        {
                          loginUser(email.text, password.text,context);
                        }
                      },
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ) ,

                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    alignment:Alignment.center,
                    child: Text(
                      'Or log in with social account',
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Tab(
                          icon: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Image(
                                image: AssetImage(
                                  'images/google.png',
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),

                          ),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Tab(
                          icon: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Image(
                                image: AssetImage(
                                  'images/facebook.png',
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),

                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          if(isShow)
            Center(child: CircularProgressIndicator())
        ],
      ),
    );
  }

  //create new user in firebase
  void loginUser(email,password,context)
  {
    //show progressIndicator in start of create the new user
    setState(() {
      isShow=true;
    });
    //dismiss the keyboard to make the toast invisible
    FocusScope.of(context).requestFocus(FocusNode());
    //create the user
    FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password).then((value)
    {
      //when the user created dismiss the progressIndicator
      setState(()
      {
        isShow=false;
      });
      //Go the main screen in the app
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => MainHomeScreen()));
      //section catching any error
    }).catchError((e)
    {
      //dismiss progressIndicator to show the error in toast msg
      setState(() {
        isShow = false;
      });
      //filtering the error types
      switch(e.toString())
          {
        case '':
          Toast.show('The email is already in use by another account', context, duration: Toast.LENGTH_LONG, gravity:  Toast.BOTTOM);
          break;
        default:
          Toast.show(e.toString(), context, duration: Toast.LENGTH_LONG, gravity:  Toast.BOTTOM);
          break;

      }
      //print the error in the log
      print(e.toString());
    });


  }
}


