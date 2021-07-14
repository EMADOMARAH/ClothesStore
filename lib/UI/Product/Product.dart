import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:store/UI/MainHome/MainHome.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();

}

class _ProductScreenState extends State<ProductScreen> {
  String _sizeValue = 'L';
  String _colorValue = 'Black';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(30, 31, 40,0.8),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 31, 40,0.8),
        elevation: 0,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context, false);
          },
          child: Icon(
            Icons.arrow_back_ios_rounded,
          ),
        ),
        title: Text(
          'Product Title',
          style: TextStyle(
            color: Colors.white,

          ),
        ) ,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:8.0),
            child: Icon(
              Icons.share,
              size: 30,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
              height: 300,
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  height: 300,
                  aspectRatio: 1,
                  autoPlayCurve: Curves.decelerate,
                  enlargeCenterPage: true,
                ),
                items: [
                  Image.asset('images/productpic.jpg'),
                  Image.asset('images/productpic.jpg'),
                  Image.asset('images/productpic.jpg'),
                ],
                // itemBuilder: (context, index) {
                //   String img= images[index];
                //   return Container(
                //     child: Center(
                //         child: Image(
                //           image: img,
                //         )
                //     ),
                //   );
                // },
              )
          ),
          Padding(
            padding: EdgeInsets.only(right: 20 , left: 30 , top: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width*0.3,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.white38,
                            width: 1,
                          ),
                        color: Color.fromRGBO(30, 31, 40,0.2),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          dropdownColor: Color.fromRGBO(30, 31, 40,1),
                          value: _sizeValue,

                          icon: Icon(Icons.arrow_drop_down_sharp),
                          iconSize: 20,
                          isExpanded: false,
                          elevation: 0 ,
                          style: TextStyle(
                            color: Colors.white,
                          ),

                          onChanged: (String newValue) {
                            setState(() {
                              _sizeValue = newValue;
                            });
                          },
                          hint: Text(
                              'Size',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          items: <String>['L','X', 'XL','XXL'].map<DropdownMenuItem<String>>((String item) {
                            return DropdownMenuItem<String>(
                              value: item!= null ? item : null,
                              child: Text('         '+item,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                              ),
                              ),

                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.3,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.white38,
                          width: 1,
                        ),
                        color: Color.fromRGBO(30, 31, 40,0.2),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          dropdownColor: Color.fromRGBO(30, 31, 40,1),
                          value: _colorValue,

                          icon: Icon(Icons.arrow_drop_down_sharp),
                          iconSize: 20,
                          isExpanded: false,
                          elevation: 0 ,
                          style: TextStyle(
                            color: Colors.white,
                          ),

                          onChanged: (String newValue) {
                            setState(() {
                              _colorValue = newValue;
                            });
                          },
                          hint: Text(
                            'Color',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          items: <String>['Black','Red', 'Blue','Green'].map<DropdownMenuItem<String>>((String item) {
                            return DropdownMenuItem<String>(
                              value: item!= null ? item : null,
                              child: Text('         '+item,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                ),
                              ),

                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.favorite_outline,
                        color: Colors.grey,
                        size: 30,
                      ),
                      splashRadius: 25,
                      autofocus:  true,
                      highlightColor: Colors.red,

                      onPressed: () {  },)
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 1),
                          child: Text(
                            'K&O',
                            style: TextStyle(
                              fontFamily: 'Metropolis',
                              fontSize: 20.0,
                              letterSpacing: 1,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          'Long blue dress',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: 10.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            RatingBar(
                              ignoreGestures: true,
                              initialRating: 5,
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
                              '(12)',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey
                              ),
                            ) ,
                          ],
                        )
                      ],
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        '\$19.99',
                        style: TextStyle(

                          fontFamily: 'Metropolis',
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: double.infinity,
                  decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.pink
                  ),
                  child: FlatButton(
                    onPressed: () {  },
                    child: Text(
                      'ADD TO CART',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ) ,

                  ),
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
