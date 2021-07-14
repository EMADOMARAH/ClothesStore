import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store/UI/ShippingAddresses/ShippingAddresses.dart';

class AddingShippingAddressesScreen extends StatefulWidget {
  @override
  _AddingShippingAddressesScreenState createState() => _AddingShippingAddressesScreenState();
}

class _AddingShippingAddressesScreenState extends State<AddingShippingAddressesScreen> {
  String fullName = "";
  String address = "";
  String city = "";
  String state = "";
  var zipCode = "0";
  String country = "";

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
          'Adding Shipping Address',
          style: TextStyle(
            color: Colors.white,

          ),
        ) ,
      ),
      body:
        SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: 70,
                decoration: new BoxDecoration(
                    color: Colors.white10,
                    borderRadius: new BorderRadius.all(new Radius.circular(10))
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Center(
                  child: TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Full name',
                      labelStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      counterText: "",
                    ),
                    maxLines: 1,
                    maxLength: 16,
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.text,
                    onChanged: (value) {
                      setState(() {
                        fullName = value;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 70,
                decoration: new BoxDecoration(
                    color: Colors.white10,
                    borderRadius: new BorderRadius.all(new Radius.circular(10))
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Center(
                  child: TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Address',
                      labelStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      counterText: "",
                    ),
                    maxLines: 1,
                    maxLength: 16,
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.text,
                    onChanged: (value) {
                      setState(() {
                        address = value;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 70,
                decoration: new BoxDecoration(
                    color: Colors.white10,
                    borderRadius: new BorderRadius.all(new Radius.circular(10))
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Center(
                  child: TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      labelText: 'City',
                      labelStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      counterText: "",
                    ),
                    maxLines: 1,
                    maxLength: 16,
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.text,
                    onChanged: (value) {
                      setState(() {
                        city = value;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 70,
                decoration: new BoxDecoration(
                    color: Colors.white10,
                    borderRadius: new BorderRadius.all(new Radius.circular(10))
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Center(
                  child: TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      labelText: 'State/Province/Region',
                      labelStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      counterText: "",
                    ),
                    maxLines: 1,
                    maxLength: 16,
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.text,
                    onChanged: (value) {
                      setState(() {
                        state = value;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 70,
                decoration: new BoxDecoration(
                    color: Colors.white10,
                    borderRadius: new BorderRadius.all(new Radius.circular(10))
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Center(
                  child: TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Zip Code (Postal Code)',
                      labelStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      counterText: "",
                    ),
                    maxLines: 1,
                    maxLength: 5,
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      setState(() {
                        zipCode = value.toString();
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 70,
                decoration: new BoxDecoration(
                    color: Colors.white10,
                    borderRadius: new BorderRadius.all(new Radius.circular(10))
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Center(
                  child: TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Country',
                      labelStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      counterText: "",
                    ),
                    maxLines: 1,
                    maxLength: 5,
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.text,
                    onChanged: (value) {
                      setState(() {
                        country = value.toString();
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.red
                  ) ,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ShippingAddressesScreen()));
                    },
                    child: Text(
                      'SAVE ADDRESS',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ) ,

                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
