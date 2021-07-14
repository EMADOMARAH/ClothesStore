import 'package:flutter/material.dart';
import 'package:store/UI/AddpaymentMethod/AddPaymentMethod.dart';
import 'package:store/UI/CheckOut/CheckOut.dart';
import 'package:awesome_card/awesome_card.dart';

class PaymentMethodsScreen extends StatefulWidget {
  @override
  _PaymentMethodsScreenState createState() => _PaymentMethodsScreenState();
}
var width , height;
bool checkedValue = false;
bool checkedValue1 = false;
class _PaymentMethodsScreenState extends State<PaymentMethodsScreen> {
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
          'Payment methods',
          style: TextStyle(
            color: Colors.white,

          ),
        ) ,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Your payment cards',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CreditCard(
              width: width,
              cardNumber: "**** **** **** 7854",
              cardExpiry: "10/25",
              cardHolderName: "Card Holder",
              cvv: "456",
              bankName: "Tech Bank",
              cardType: CardType.masterCard, // Optional if you want to override Card Type
              showBackSide: false,
              frontBackground: CardBackgrounds.black,
              backBackground: CardBackgrounds.white,
              showShadow: true,
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
            CreditCard(
              width: width,
              cardNumber: "**** **** **** 4568",
              cardExpiry: "10/25",
              cardHolderName: "Card Holder",
              cvv: "456",
              bankName: "Tech Bank",
              cardType: CardType.visa, // Optional if you want to override Card Type
              showBackSide: false,
              frontBackground: CardBackgrounds.black,
              backBackground: CardBackgrounds.white,
              showShadow: true,
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
                value: checkedValue1,
                contentPadding: EdgeInsets.all(0),
                controlAffinity: ListTileControlAffinity.leading,
                checkColor: Colors.black,
                onChanged: (newValue) {
                  setState(() {
                    checkedValue1 = !checkedValue1;
                  });
                },
              ),
            ),



          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => AddPaymentMethodScreen()));

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
