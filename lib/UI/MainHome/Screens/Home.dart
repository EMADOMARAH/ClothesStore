import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:store/UI/Product/Product.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var width ;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromRGBO(30, 31, 40, 1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Image(
                  image: AssetImage('images/model.jpg'),
                  fit: BoxFit.contain,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25,0,0,15),
                  child: Text(
                    'Street clothes',
                    style: TextStyle(
                      fontFamily: 'Metropolis',
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20,10,15,10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          'Sale',
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: 30.0,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        'Super winter sale',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'Metropolis',
                          fontSize: 15.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      'View all',
                      style: TextStyle(
                        fontFamily: 'Metropolis',
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
                height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen()),);
                      });
                    },

                    child: Container(
                      height: MediaQuery.of(context).size.height/2.5,
                      child: ListView.separated(
                        itemCount:10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) => item(),
                        separatorBuilder: (BuildContext context, int index) =>seperat(),

                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                'New',
                                style: TextStyle(
                                  fontFamily: 'Metropolis',
                                  fontSize: 30.0,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Text(
                              'You\'ve never seen it before!',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontFamily: 'Metropolis',
                                fontSize: 15.0,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0,right: 15),
                          child: Text(
                            'View all',
                            style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),

                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen()),);
                      });
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height/2.5,
                      child: ListView.separated(
                        itemCount:10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) => item2(),
                        separatorBuilder: (BuildContext context, int index) =>seperat(),

                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget seperat()=>SizedBox(
    width: 15,
  );
  Widget item() =>Container(
    width: width/2.5,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.of(context).size.height/3.6,
          width:width/2.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('images/productpic.jpg'),
            ),
          ),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 10,left: 10),
              child: Text(
                '-10%',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 15.0,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            RatingBar(
              ignoreGestures: true,
              initialRating: 4.5,
              itemSize: 13,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 1),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            SizedBox(
              width: 2,
            ),
            Text(
              '(4.5)',
              style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey
              ),
            ) ,
            Spacer(
              flex: 1,
            ),
            GestureDetector(
              onTap: (){
              } ,
              child: Icon(
                Icons.favorite_outline,
                color: Colors.grey,
              ),
            )
          ],
        ),
        Text(
          'Dorothy Perkins',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 10,

          ),
        ),
        Text(
          'Egyption Galabya',
          style: TextStyle(
              color: Colors.white,
              fontSize: 13
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Text(
              '15\$',
              style: TextStyle(
                  color: Colors.grey,
                  decoration: TextDecoration.lineThrough
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              '12\$',
              style: TextStyle(
                color: Colors.red,
              ),
            ),

          ],
        ),
      ],
    ),
  );
  Widget item2() =>Container(
    width: width/2.5,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.of(context).size.height/3.6,
          width:width/2.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('images/productpic2.jpg'),
            ),
          ),
          // child: Container(
          //   child: Padding(
          //     padding: const EdgeInsets.only(top: 10,left: 10),
          //     child: Text(
          //       'New',
          //       style: TextStyle(
          //         color: Colors.red,
          //         fontSize: 15.0,
          //       ),
          //     ),
          //   ),
          // ),
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            RatingBar(
              ignoreGestures: true,
              initialRating: 4,
              itemSize: 13,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 1),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            SizedBox(
              width: 2,
            ),
            Text(
              '(4)',
              style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey
              ),
            ) ,
            Spacer(
              flex: 1,
            ),
            GestureDetector(
              onTap: (){
              } ,
              child: Icon(
                Icons.favorite_outline,
                color: Colors.grey,
              ),
            )
          ],
        ),
        Text(
          'Dorothy Perkins',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 10,

          ),
        ),
        Text(
          'Nice Outfit',
          style: TextStyle(
              color: Colors.white,
              fontSize: 13
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          '30\$',
          style: TextStyle(
            color: Colors.red,
          ),
        ),
      ],
    ),
  );
}
