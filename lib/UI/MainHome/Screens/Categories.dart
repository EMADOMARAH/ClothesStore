import 'package:flutter/material.dart';
import 'package:store/UI/MainHome/MainHome.dart';
import 'package:store/UI/MainHome/Screens/Home.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  List<String> myCategories =[
    'Tops','Shirts & Blouses','Cardigans & Sweaters','Knitwear','Blazers','Outerwear',
    'Pants','Jeans','Shorts','Shorts','Skirts','Dresses'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(30, 31, 40,0.8),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 31, 40,0.8),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'Categories',
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Container(
                width: double.infinity,
                decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.pink

                ) ,
                child: FlatButton(
                  onPressed: () {  },
                  child: Text(
                    'VIEW ALL ITEMS',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ) ,

                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Text(
                  'Choose category',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: MediaQuery.of(context).size.height,
              child: ListView.separated(
                itemCount:myCategories.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) => item(index),
                separatorBuilder: (BuildContext context, int index) =>Container(
                  width: double.infinity,
                  height: 1,
                  decoration: BoxDecoration(
                    color: Colors.white12
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget item(h)=>Padding(
    padding: EdgeInsets.fromLTRB(40, 10,0, 20),
    child: Text(
      myCategories[h],
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w400
      ),
    ),
  );

}
