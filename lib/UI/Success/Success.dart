import 'package:flutter/material.dart';
import 'package:store/UI/MainHome/MainHome.dart';
import 'package:store/UI/MainHome/Screens/Home.dart';

class SuccessScreen extends StatefulWidget {
  @override
  _SuccessScreenState createState() => _SuccessScreenState();
}
  var width;

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromRGBO(30, 31, 40, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(
            flex: 2,
          ),
          Icon(
            Icons.assignment_turned_in,
            color: Colors.red,
            size: 200,
          ),
          Center(
            child: Text(
              'Success!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Your order will be delivered soon.",
            style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.normal
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
              "Thank you for choosing our app!",
            style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.normal
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Container(
            width: width*0.9,
            decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.red
            ) ,
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MainHomeScreen()));
                },
                child: Text(
                  'CONTINUE SHOPPING',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ) ,

              ),
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
