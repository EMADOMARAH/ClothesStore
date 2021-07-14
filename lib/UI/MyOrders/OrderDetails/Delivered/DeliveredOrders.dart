import 'package:flutter/material.dart';

class DeliveredOrdersScreen extends StatefulWidget {
  @override
  _DeliveredOrdersScreenState createState() => _DeliveredOrdersScreenState();
}

class _DeliveredOrdersScreenState extends State<DeliveredOrdersScreen> {
  var width , height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(30, 31, 40,0.8),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              height: height,
              child: ListView.separated(
                itemCount:5 ,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) => item(),
                separatorBuilder: (BuildContext context, int index) =>SizedBox(
                  height: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget item()=>Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(20),
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
  );
}
