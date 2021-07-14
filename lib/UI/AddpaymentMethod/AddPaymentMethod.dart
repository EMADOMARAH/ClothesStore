import 'package:flutter/material.dart';
import 'package:store/UI/PaymentMethods/PaymentMethods.dart';
import 'package:awesome_card/awesome_card.dart';

class AddPaymentMethodScreen extends StatefulWidget {
  @override
  _AddPaymentMethodScreenState createState() => _AddPaymentMethodScreenState();
}

class _AddPaymentMethodScreenState extends State<AddPaymentMethodScreen> {
  String cardNumber = "";
  String cardHolderName = "";
  String expiryDate = "";
  String cvv = "";
  bool showBack = false;

  FocusNode _focusNode;

  bool checked= false;

  @override
  void initState() {
    super.initState();
    _focusNode = new FocusNode();
    _focusNode.addListener(() {
      setState(() {
        _focusNode.hasFocus ? showBack = true : showBack = false;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
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
          'Add payment method',
          style: TextStyle(
            color: Colors.white60,
          ),
        ) ,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left : 20.0),
              child: Text(
                'Your payment card',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CreditCard(
              cardNumber: cardNumber,
              cardExpiry: expiryDate,
              cardHolderName: cardHolderName,
              cvv: cvv,
              bankName: "Axis Bank",
              showBackSide: showBack,
              frontBackground: CardBackgrounds.black,
              backBackground: CardBackgrounds.white,
              showShadow: true,
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 60,
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
                        labelText: 'Card Number',
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
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        setState(() {
                          cardNumber = value;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
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
                        labelText: 'Card Expiry',
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
                      onChanged: (value) {
                        setState(() {
                          expiryDate = value;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
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
                        labelText: 'Card Holder Name',
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
                      onChanged: (value) {
                        setState(() {
                          cardHolderName = value;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  decoration: new BoxDecoration(
                      color: Colors.white10,
                      borderRadius: new BorderRadius.all(new Radius.circular(10))
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Center(
                    child: TextFormField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        labelText: 'CVV',
                        labelStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        counterText: "",
                      ),
                      maxLength: 3,
                      maxLines: 1,
                      cursorColor: Colors.white,
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        setState(() {
                          cvv = value;
                        });
                      },
                      focusNode: _focusNode,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Theme(
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
                      value: checked,
                      contentPadding: EdgeInsets.all(0),
                      controlAffinity: ListTileControlAffinity.leading,
                      checkColor: Colors.black,
                      onChanged: (newValue) {
                        setState(() {
                          checked = !checked;
                        });
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    width: width*0.9,
                    decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.red
                    ) ,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => PaymentMethodsScreen()));
                      },
                      child: Text(
                        'ADD CARD',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ) ,

                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            )





          ],
        ),
      ),
    );
  }
}
