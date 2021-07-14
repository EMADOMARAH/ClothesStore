import 'package:flutter/material.dart';

class CancelledOrdersScreen extends StatefulWidget {
  @override
  _CancelledOrdersScreenState createState() => _CancelledOrdersScreenState();
}

class _CancelledOrdersScreenState extends State<CancelledOrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(30, 31, 40,0.8),
      body: Center(
        child: Text(
          'No Cancelled Orders',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30
          ),
        ),
      ),
    );
  }
}
