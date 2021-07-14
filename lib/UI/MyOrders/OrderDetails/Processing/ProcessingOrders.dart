import 'package:flutter/material.dart';

class ProcessingOrdersScreen extends StatefulWidget {
  @override
  _ProcessingOrdersScreenState createState() => _ProcessingOrdersScreenState();
}

class _ProcessingOrdersScreenState extends State<ProcessingOrdersScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(30, 31, 40,0.8),
      body: Center(
        child: Text(
          'No Processing Orders',
          style: TextStyle(
              color: Colors.white,
              fontSize: 30
          ),
        ),
      ),
    );
  }
}
