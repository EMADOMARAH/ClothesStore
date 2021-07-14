import 'package:flutter/material.dart';
import 'package:store/UI/MainHome/Screens/MyBag.dart';
import 'package:store/UI/PaymentMethods/PaymentMethods.dart';
import 'package:store/UI/ShippingAddresses/ShippingAddresses.dart';
import 'package:store/UI/Success/Success.dart';

class CheckOutScreen extends StatefulWidget {
  @override
  _CheckOutScreenState createState() => _CheckOutScreenState();
}
    var width , height;

class _CheckOutScreenState extends State<CheckOutScreen> {
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
          onTap: (){
            Navigator.pop(context, false);
          },
          child: Icon(
            Icons.arrow_back_ios_outlined,
          ),
        ),
        title: Text(
          'Check Out',
          style: TextStyle(
            color: Colors.white,

          ),
        ) ,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Shipping address',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //address
              Container(
                padding: EdgeInsets.all(20),
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
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ShippingAddressesScreen()));

                          },
                          child: Text(
                            'Change',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 15,
                            ),
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
                    Text(
                      'Alshaqya, Egypt',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ) ,

              ),
              SizedBox(
                height: 30,
              ),
              //Payment
              Container(
                padding: EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(30, 31, 40, 1),
                    borderRadius: new BorderRadius.circular(10)
                ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Payment',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => PaymentMethodsScreen()));

                          },
                          child: Text(
                            'Change',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                       Container(
                         height: height/14,
                         width: width/4.5,
                         decoration: BoxDecoration(
                           borderRadius: new BorderRadius.circular(10),
                           image: DecorationImage(
                               fit: BoxFit.fill,
                               image: AssetImage('images/mastercard.jpg')
                           ),
                         ),
                       ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          '**** **** **** 3947',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    )
                  ],
                ) ,

              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Delivery method',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: height/10,
                    width: width/3.8,
                    decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('images/fedex.jpg')
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Container(
                    height: height/10,
                    width: width/3.8,
                    decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('images/usp.jpg')
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Container(
                    height: height/10,
                    width: width/3.8,
                    decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('images/dhl.png')
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Order : ',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Text(
                    '122',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Delivery : ',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Text(
                    '15',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Summary : ',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Text(
                    '137\$',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: width*0.9,
                decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.red
                ) ,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => SuccessScreen()));
                    },
                  child: Text(
                    'SUBMIT ORDER',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ) ,

                ),
              ),
              SizedBox(
                height: 15,
              )



            ],
          ),
        ),
      ),
    );
  }
}
