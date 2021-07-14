import 'package:flutter/material.dart';
import 'package:store/UI/Login/LogIn.dart';
import 'package:store/UI/Signup/SignUp.dart';

class ForgetPasswordScreen extends StatefulWidget {
  @override
  _ForgetPasswordScreenState createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromRGBO(30, 31, 40, 0.8),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 31, 40, 0),
        elevation: 0,
        leading: IconButton(
          color: Colors.white,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          iconSize: 24,
          onPressed: () {
            setState(() {
              Navigator.pop(context, false);
            });
          },
          icon: Icon(Icons.arrow_back_ios_rounded),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 5, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Forgot Password",
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
              Text(
                'Please, enter your email address. You will receive a link to create a new password via email.',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
              SizedBox(
                height: 10,
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
                height: 30,
              ),
              //Button
              Container(
                width: double.infinity,
                decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.pink

                ) ,
                child: FlatButton(
                  onPressed: () {  },
                  child: Text(
                    'SEND',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ) ,

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
