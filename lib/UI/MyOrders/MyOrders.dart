import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store/UI/MyOrders/OrderDetails/Cancelled/CancelledOrders.dart';
import 'package:store/UI/MyOrders/OrderDetails/Delivered/DeliveredOrders.dart';
import 'package:store/UI/MyOrders/OrderDetails/Processing/ProcessingOrders.dart';

class MyOrdersScreen extends StatefulWidget {
  @override
  _MyOrdersScreenState createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  @override
  // ignore: must_call_super
  void initState() {
    // TODO: implement initState
    DeliveredOrdersScreen();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(30, 31, 40, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 31, 40,0.8),
        elevation: 0,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context, false);
          },
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
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            TabBar(
              unselectedLabelColor: Colors.grey,
              labelColor:Colors.white ,
              labelPadding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Tab(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10,5,10,5),
                    child: Text(
                      'Delivered',
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: Text(
                      'Processing',
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Cancelled',
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  DeliveredOrdersScreen(),
                 ProcessingOrdersScreen(),
                 CancelledOrdersScreen()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
