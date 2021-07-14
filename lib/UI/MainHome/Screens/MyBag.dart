import 'package:flutter/material.dart';
import 'package:store/UI/CheckOut/CheckOut.dart';
import 'package:store/UI/MainHome/MainHome.dart';

class MyBagScreen extends StatefulWidget {
  @override
  _MyBagScreenState createState() => _MyBagScreenState();

}


class _MyBagScreenState extends State<MyBagScreen> {
  var width , height;
  var counter = 0;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(30, 31, 40, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 31, 40,0.8),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'My Bag',
            style: TextStyle(
              color: Colors.white,

            ),
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
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                height: height/2,
                child: ListView.separated(
                  itemCount:2 ,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) => item(),
                  separatorBuilder: (BuildContext context, int index) =>SizedBox(
                    height: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height:20 ,),
            Container(
              height: 50,
              padding: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.pink,
                  ),
                borderRadius: BorderRadius.circular(40)
              ),
              child: TextFormField(
                maxLines: 1,

                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  hintText: "Enter your promo code",
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  suffixIcon:  Container(
                    height: 15,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white38,
                    ),
                    child: IconButton(
                      splashRadius: 20,
                      padding: EdgeInsets.all(0.0),
                      iconSize:10,
                      icon: Icon(
                        Icons.arrow_forward_sharp,
                        color:Color.fromRGBO(30, 31, 40, 1),
                        size: 25,
                      ) ,
                      onPressed: () {
                        setState(() {
                        });
                      },
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  '   Total amount : ',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Text(
                  '60\$',
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
            Container(
              width: width*0.9,
              decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.pink
              ) ,
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => CheckOutScreen()));

                },
                child: Text(
                  'CHECK OUT',
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
      )
    );
  }

  Widget item()=>Container(
    height: height/5,
  decoration: BoxDecoration(
      borderRadius: new BorderRadius.only(
        topLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
        topRight: Radius.circular(10),
    ),
  ),
    child:Container(
      height: height/5,
      decoration: BoxDecoration(
          color: Color(0xFF2A2C36),
        borderRadius: new BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      //Main Row
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //item Image
          Container(
            height: height/5,
            width: width/3,
            decoration: BoxDecoration(
              borderRadius: new BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('images/productpic.jpg')
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          //title , color, remove icon , counter
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 7,
              ),
              //dress title
              Text(
                'Galabya',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 20
                ),
              ),
              SizedBox(
                height: 5,
              ),
              //color row
              Row(
                children: [
                  Text(
                    'Color : ',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                        fontSize: 12
                    ),
                  ),
                  Text(
                    'Black',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 12
                    ),
                  ),
                ],
              ),
              Spacer(
                flex: 1,
              ),
              //remove icon + counter
              Row(
                children: [
                  //icon remove
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white12,
                    ),
                    child: IconButton(
                      splashRadius: 20,
                      padding: EdgeInsets.all(0.0),
                      iconSize:15,
                      icon: Icon(
                        Icons.remove,
                        color: Colors.grey,
                        size: 30,
                      ) ,
                      onPressed: () {
                        setState(() {
                          counter--;
                        });
                      },

                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ) ,
                  //counter
                  Text(
                    '$counter',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
          SizedBox(
            width: 10,
          ),
          //size , add icon
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 7,
              ),
              //place holder text
              Text(
                'inv',
                style: TextStyle(
                    color: Colors.transparent,
                    fontWeight: FontWeight.normal,
                    fontSize: 20
                ),
              ),
              SizedBox(
                height: 5,
              ),
              //Size row
              Row(
                children: [
                  Text(
                    'Size : ',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                        fontSize: 12
                    ),
                  ),
                  Text(
                    'L',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 12
                    ),
                  ),
                ],
              ),
              Spacer(
                flex: 1,
              ),
              //add icon
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white12,
                    ),
                    child: IconButton(
                      splashRadius: 20,
                      padding: EdgeInsets.all(0.0),
                      iconSize:15,
                      icon: Icon(
                        Icons.add,
                        color: Colors.grey,
                        size: 30,
                      ) ,
                      onPressed: () {
                        setState(() {
                          counter++;
                        });
                      },

                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
          Spacer(
            flex: 1,
          ),
          Column(
            children: [
              SizedBox(
                height: 5,
              ),
              myPopMenu(),

              // GestureDetector(
              //   onTap: (){
              //   },
              //   child: Icon(
              //     Icons.auto_fix_high,
              //     color: Colors.grey,
              //
              //   ),
              // ),
              Spacer(
                flex: 1,
              ),
              Text(
                '30\$',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                ),
              ),
              SizedBox(
                height: 25,
              )
            ],
          ),


        ],
      ),
    ),
  );

  Widget myPopMenu() {
    return PopupMenuButton(
      color: Color(0xFF2A2C36),
        icon: Icon(
          Icons.auto_fix_high,
          color: Colors.white38 ,
        ),

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
        onSelected: (value) {
          },
        itemBuilder: (context) => [
          PopupMenuItem(
              value: 1,
              child: Text('Add to favorites',
              style: TextStyle(
                color: Colors.white
              ),)),
          PopupMenuItem(
              value: 2,
              child: Text('Delete from the list',
                style: TextStyle(
                    color: Colors.white
                ),)),

        ]);
  }
}
