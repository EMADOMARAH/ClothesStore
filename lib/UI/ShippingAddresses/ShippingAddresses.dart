import 'package:flutter/material.dart';
import 'package:store/UI/AddingShippingAddresses/AddingShippingAddresses.dart';
import 'package:store/UI/CheckOut/CheckOut.dart';

class ShippingAddressesScreen extends StatefulWidget {
  @override
  _ShippingAddressesScreenState createState() => _ShippingAddressesScreenState();
}

class _ShippingAddressesScreenState extends State<ShippingAddressesScreen> {
  bool checkedValue = false;
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
          'Shipping Addresses',
          style: TextStyle(
            color: Colors.white,
          ),
        ) ,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: new BorderRadius.circular(10)
                ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Emad Omarah',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Edit',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 15,
                          ),
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '10th Of Ramadan',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Alshaqya, Egypt',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Theme(
                      data: ThemeData(unselectedWidgetColor: Colors.white),
                      child: CheckboxListTile(
                        autofocus: false,
                        tristate: false,
                        activeColor: Colors.white,
                        title: Text(
                          "Use as default payment method",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12
                          ),
                        ), //    <-- label
                        value: checkedValue,
                        contentPadding: EdgeInsets.all(0),
                        controlAffinity: ListTileControlAffinity.leading,
                        checkColor: Colors.black,
                        onChanged: (newValue) {
                          setState(() {
                            checkedValue = !checkedValue;
                          });
                        },
                      ),
                    ),
                  ],
                ) ,

              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: new BorderRadius.circular(10)
                ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Emad Omarah',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Edit',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 15,
                          ),
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '10th Of Ramadan',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Alshaqya, Egypt',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Theme(
                      data: ThemeData(unselectedWidgetColor: Colors.white),
                      child: CheckboxListTile(
                        autofocus: false,
                        tristate: false,
                        activeColor: Colors.white,
                        title: Text(
                          "Use as default payment method",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12
                          ),
                        ), //    <-- label
                        value: checkedValue,
                        contentPadding: EdgeInsets.all(0),
                        controlAffinity: ListTileControlAffinity.leading,
                        checkColor: Colors.black,
                        onChanged: (newValue) {
                          setState(() {
                            checkedValue = !checkedValue;
                          });
                        },
                      ),
                    ),
                  ],
                ) ,

              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: new BorderRadius.circular(10)
                ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Emad Omarah',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Edit',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 15,
                          ),
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '10th Of Ramadan',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Alshaqya, Egypt',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Theme(
                      data: ThemeData(unselectedWidgetColor: Colors.white),
                      child: CheckboxListTile(
                        autofocus: false,
                        tristate: false,
                        activeColor: Colors.white,
                        title: Text(
                          "Use as default payment method",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12
                          ),
                        ), //    <-- label
                        value: checkedValue,
                        contentPadding: EdgeInsets.all(0),
                        controlAffinity: ListTileControlAffinity.leading,
                        checkColor: Colors.black,
                        onChanged: (newValue) {
                          setState(() {
                            checkedValue = !checkedValue;
                          });
                        },
                      ),
                    ),
                  ],
                ) ,

              ),

            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => AddingShippingAddressesScreen()));

        },
        mini: true,
        child: Icon(
          Icons.add,
          color: Colors.black87,
        ),
        elevation: 10,
        backgroundColor: Colors.white,
      ),
    );

  }
}
