import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store/UI/MainHome/Screens/MyProfile.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}
var width , height;
bool sales = false;
bool newArrival = false;
bool deliveryStatus = false;
bool dismiss = false;

class _SettingScreenState extends State<SettingScreen> {

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
          'Setting',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                'Personal Information',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 60,
                decoration: new BoxDecoration(
                    color: Colors.white10,
                    borderRadius: new BorderRadius.all(new Radius.circular(10))
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
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                decoration: new BoxDecoration(
                    color: Colors.white10,
                    borderRadius: new BorderRadius.all(new Radius.circular(10))
                ),
                child: Center(
                  child: TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Date Of Birth',
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
                    keyboardType: TextInputType.datetime,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Text(
                    'Password',
                    style: TextStyle(
                        color: Colors.white,
                      fontSize: 15
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  FlatButton(
                    onPressed: () {
                      _settingModalBottomSheet(context);
                    },
                    child: Text(
                      'Change',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),

                  )


                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 60,
                decoration: new BoxDecoration(
                    color: Colors.white10,
                    borderRadius: new BorderRadius.all(new Radius.circular(10))
                ),
                child: Center(
                  child: TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Password',
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
                    keyboardType: TextInputType.visiblePassword,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Notification',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                ),

              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Sales',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Switch(
                    value: sales,
                    onChanged: (value){
                      setState(() {
                        sales=value;
                      });
                    },
                    activeTrackColor: Colors.lightGreenAccent,
                    activeColor: Colors.green,
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'New arrivals',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Switch(
                    value: newArrival,
                    onChanged: (value){
                      setState(() {
                        newArrival=value;
                      });
                    },
                    activeTrackColor: Colors.lightGreenAccent,
                    activeColor: Colors.green,
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Delivery status changes',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Switch(
                    value: deliveryStatus,
                    onChanged: (value){
                      setState(() {
                        deliveryStatus=value;
                      });
                    },
                    activeTrackColor: Colors.lightGreenAccent,
                    activeColor: Colors.green,
                  ),
                ],
              ),


            ],
          ),
        ),
      ),

    );
  }

  void _settingModalBottomSheet(context)
  {
    showModalBottomSheet(
        isDismissible: true ,
        backgroundColor: Color.fromRGBO(30, 31, 40, 1),
        context: context ,
        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(22.0) ),
        builder: (BuildContext bc)
        {
          return Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(

                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Password change' ,
                    style: TextStyle(
                      color: Colors.white ,
                      fontSize: 20 ,
                    ) ,

                  ) ,
                  SizedBox(
                    height: 15 ,
                  ) ,
                  Container(
                    height: 60 ,
                    decoration: new BoxDecoration(
                        color: Colors.white10 ,
                        borderRadius: new BorderRadius.all(new Radius.circular(10))
                    ) ,
                    child: Center(
                      child: TextFormField(
                        style: TextStyle(
                          color: Colors.white ,
                        ) ,
                        decoration: InputDecoration(
                          labelText: 'Old Password' ,
                          labelStyle: TextStyle(
                            color: Colors.grey ,
                          ) ,
                          border: InputBorder.none ,
                          contentPadding: EdgeInsets.symmetric(horizontal: 20) ,
                          counterText: "" ,
                        ) ,
                        maxLines: 1 ,
                        maxLength: 16 ,
                        cursorColor: Colors.white ,
                        keyboardType: TextInputType.visiblePassword ,
                      ) ,
                    ) ,
                  ) ,
                  SizedBox(
                    height: 15 ,
                  ) ,
                  Row(
                    children: [
                      Spacer(
                        flex: 1 ,
                      ) ,
                      Text(
                        'Forgot password?' ,
                        style: TextStyle(
                            color: Colors.grey
                        ) ,
                      ) ,


                    ] ,
                  ) ,
                  SizedBox(
                    height: 15 ,
                  ) ,
                  Container(
                    height: 60 ,
                    decoration: new BoxDecoration(
                        color: Colors.white10 ,
                        borderRadius: new BorderRadius.all(new Radius.circular(10))
                    ) ,
                    child: Center(
                      child: TextFormField(
                        style: TextStyle(
                          color: Colors.white ,
                        ) ,
                        decoration: InputDecoration(
                          labelText: 'New password' ,
                          labelStyle: TextStyle(
                            color: Colors.grey ,
                          ) ,
                          border: InputBorder.none ,
                          contentPadding: EdgeInsets.symmetric(horizontal: 20) ,
                          counterText: "" ,
                        ) ,
                        maxLines: 1 ,
                        maxLength: 16 ,
                        cursorColor: Colors.white ,
                        keyboardType: TextInputType.visiblePassword ,
                      ) ,
                    ) ,
                  ) ,
                  SizedBox(
                    height: 15 ,
                  ) ,
                  Container(
                    height: 60 ,
                    decoration: new BoxDecoration(
                        color: Colors.white10 ,
                        borderRadius: new BorderRadius.all(new Radius.circular(10))
                    ) ,
                    child: Center(
                      child: TextFormField(
                        style: TextStyle(
                          color: Colors.white ,
                        ) ,
                        decoration: InputDecoration(
                          labelText: 'Repeat new password' ,
                          labelStyle: TextStyle(
                            color: Colors.grey ,
                          ) ,
                          border: InputBorder.none ,
                          contentPadding: EdgeInsets.symmetric(horizontal: 20) ,
                          counterText: "" ,
                        ) ,
                        maxLines: 1 ,
                        maxLength: 16 ,
                        cursorColor: Colors.white ,
                        keyboardType: TextInputType.visiblePassword ,
                      ) ,
                    ) ,
                  ) ,
                  SizedBox(
                    height: 20 ,
                  ) ,
                  Container(
                    width: width * 0.9 ,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25) ,
                        color: Colors.pink
                    ) ,
                    child: FlatButton(
                      onPressed: ()
                      => Navigator.pop(context) ,
                      child: Text(
                        'SAVE PASSWORD' ,
                        style: TextStyle(
                          color: Colors.white ,
                        ) ,
                      ) ,

                    ) ,
                  ) ,
                ] ,
              ),
            ) ,
          );
        }
    );
  }
}
