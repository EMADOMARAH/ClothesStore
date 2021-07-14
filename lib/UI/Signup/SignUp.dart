import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:store/UI/Login/LogIn.dart';
import 'package:store/UI/MainHome/MainHome.dart';
import 'package:toast/toast.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class signUpScreen extends StatefulWidget {
  @override
  _signUpScreenState createState() => _signUpScreenState();
}

var name = TextEditingController();
var email = TextEditingController();
var password = TextEditingController();

bool isShow = false;


class _signUpScreenState extends State<signUpScreen> {

  Future<bool> _onWillPop() async {
    return (await showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        backgroundColor: Color.fromRGBO(30, 31, 40, 1),
        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(22.0) ),
        title: new Text(
          'Are you sure ?',
          style: TextStyle(
              color: Colors.white
          ),
        ),
        content: new Text(
          'Do you want to exit an App',
          style: TextStyle(
              color: Colors.white
          ),),
        actions: <Widget>[
          new FlatButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text(
              'No',
              style: TextStyle(
                  color: Colors.white
              ),
            ),
          ),
          new FlatButton(
            onPressed: () => exit(0),
            child: new Text(
              'Yes',
              style: TextStyle(
                  color: Colors.white
              ),
            ),
          ),
        ],
      ),
    )) ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        backgroundColor: Color.fromRGBO(30, 31, 40, 0.8),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(30, 31, 40, 0),
          elevation: 0,
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
                      "Sign Up",
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
                    //name field
                    Container(
                      decoration: new BoxDecoration(
                          color:Color.fromRGBO(30, 31, 40, 2),
                          borderRadius: BorderRadius.circular(8.0)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20,0,20,0),
                        child: TextFormField(
                          controller: name,
                          cursorColor: Colors.white,
                          maxLines: 1,
                          decoration: new InputDecoration(
                            labelText: "Name",
                            labelStyle: TextStyle(
                              color: Colors.white70,
                              fontFamily: 'Metropolis',
                              letterSpacing: 0.8,
                            ),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                          keyboardType: TextInputType.name,
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
                    //email field
                    Container(
                      decoration: new BoxDecoration(
                          color:Color.fromRGBO(30, 31, 40, 2),
                          borderRadius: BorderRadius.circular(8.0)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20,0,20,0),
                        child: TextFormField(
                          controller: email,
                          cursorColor: Colors.white,
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
                          controller: password,
                          cursorColor: Colors.white,
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
                          'Already have an account ?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        IconButton(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onPressed: () {
                            setState(() {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => LogInScreen()),);
                            });
                          },
                          color:Colors.pink,
                          iconSize: 30,
                          icon:Icon(Icons.arrow_right_alt_outlined),
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
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ) ,
                        onPressed: ()
                        {
                          if(name.text.isEmpty || email.text.isEmpty||password.text.isEmpty)
                          {
                            //dismiss the keyboard to make the toast invisible
                            FocusScope.of(context).requestFocus(FocusNode());
                            Toast.show('Please enter valid data', context, duration: Toast.LENGTH_LONG, gravity:  Toast.BOTTOM);
                          }else
                            {
                              createUser(email.text, password.text,context);
                            }
                          },
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      alignment:Alignment.center,
                      child: Text(
                        'Or sign up with social account',
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
      )
    );
  }

  //create new user in firebase
  void createUser(email,password,context)
  {
    //show progressIndicator in start of create the new user
    setState(() {
      isShow=true;
    });
    //dismiss the keyboard to make the toast invisible
    FocusScope.of(context).requestFocus(FocusNode());
    //create the user
    FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password).then((value)
    {
      //when the user created dismiss the progressIndicator
      setState(()
      {
        isShow=false;
      });
      //Send users info to fireStore (name , email , id ,address , emailStatus,phone) not password you Bi***
      addUserInfo(name.text , email , value.user.uid,value.user.displayName,value.user.emailVerified,value.user.phoneNumber);
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
        case '[firebase_auth/email-already-in-use] The email address is already in use by another account.':
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

  void addUserInfo(name,email,uid,address,email_status,phone)
  {
    //create collection/node called users in fireStore
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    //add elements under the users collection
    users.add({
      'user_id':uid,
      'user_name' : name,
      'user-email' : email,
      'user_address' : address,
      'email_status' : email_status,
      'phone' : phone
    })
    .then((value) {
      //Go the main screen in the app
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => MainHomeScreen()));
    })
    .catchError((e)
    {
      Toast.show(e.toString(), context, duration: Toast.LENGTH_LONG, gravity:  Toast.BOTTOM);
      print(e.toString());
    });
  }
}

