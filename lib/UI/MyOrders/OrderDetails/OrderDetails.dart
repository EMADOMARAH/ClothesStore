import 'package:flutter/material.dart';

class OrderDetailsScreen extends StatefulWidget {
  @override
  _OrderDetailsScreenState createState() => _OrderDetailsScreenState();
}
  var height , width;

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(30, 31, 40, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 31, 40,0.8),
        elevation: 0,
        leading: GestureDetector(

          child: Icon(
            Icons.arrow_back_ios_outlined,
          ),
        ),
        title: Text(
          'My Orders',
          style: TextStyle(
            color: Colors.white,

          ),
        ) ,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:8.0),
            child: Icon(
              Icons.search,
              size: 30,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          height: height/4,
          decoration: BoxDecoration(
            color: Colors.white10,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25,10,25,10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Order N: 5234785',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Text(
                      '05-12-2019',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Tracking number :',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'IW3475453455',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Icon(
                      Icons.auto_awesome_motion,
                      color: Colors.grey,
                    )
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Row(
                  children: [
                    Text(
                      'Quantity',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '3',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Text(
                      'Total Amount: ',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15
                      ),
                    ),
                    Text(
                      '112',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Container(
                      height: 45,
                      width: width/3.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: Colors.white,
                          width: 1,
                        ),
                      ),
                      child: FlatButton(
                        onPressed: () {  },
                        child: Text(
                          'Details',
                          style: TextStyle(
                            color: Colors.white,

                          ),
                        ),

                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Text(
                        'Delivered',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 18
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
