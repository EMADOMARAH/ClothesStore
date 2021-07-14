import 'package:flutter/material.dart';
import 'package:store/UI/AddpaymentMethod/AddPaymentMethod.dart';
import 'package:store/UI/CheckOut/CheckOut.dart';
import 'package:store/UI/ForgetPassword/ForgetPassword.dart';
import 'package:store/UI/MainHome/Screens/Categories.dart';
import 'package:store/UI/MainHome/Screens/Favorite.dart';
import 'package:store/UI/MainHome/Screens/Home.dart';
import 'package:store/UI/MainHome/MainHome.dart';
import 'package:store/UI/MainHome/Screens/MyBag.dart';
import 'package:store/UI/MainHome/Screens/MyProfile.dart';
import 'package:store/UI/MyOrders/MyOrders.dart';
import 'package:store/UI/MyOrders/OrderDetails/OrderDetails.dart';
import 'package:store/UI/PaymentMethods/PaymentMethods.dart';
import 'package:store/UI/Product/Product.dart';
import 'package:store/UI/Setting/Setting.dart';
import 'package:store/UI/ShippingAddresses/ShippingAddresses.dart';
import 'package:store/UI/Signup/SignUp.dart';
import 'package:store/UI/Success/Success.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';



bool userFound= false;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  if(FirebaseAuth.instance.currentUser != null)
    userFound = true;

  runApp(MyApp(userFound));
}

class MyApp extends StatelessWidget {
  final bool userFound;
  MyApp(this.userFound);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: userFound ? MainHomeScreen() :  signUpScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
 final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:Scaffold()
    );
  }
}
