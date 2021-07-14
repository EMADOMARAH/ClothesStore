import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:store/UI/MainHome/MainHome.dart';

class FavoritesScreen extends StatefulWidget {
  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}
  var width;
    var size;
class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    width = MediaQuery.of(context).size.width;

    /*24 is for notification bar on Android*/
    final double itemHeight =((size.height - kToolbarHeight - 24) / 2.2);
    final double itemWidth = (size.width / 2);
    return Scaffold(
      backgroundColor: Color.fromRGBO(30, 31, 40, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(30, 31, 40,0.8),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'Favorites',
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
      body:GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 2,
        childAspectRatio: (itemWidth / itemHeight),
        // Generate 100 widgets that display their index in the List.
        children: List.generate(10, (index) {
          return  Container(
            child: Center(
              child: item(),

            ),
          );
        }),
      ),
    );
  }
  Widget item() =>Container(
    width: (width/2.5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.of(context).size.height/4,
          width:(width/2.5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('images/productpic.jpg'),
            ),
          ),
          child: Align(
            alignment:Alignment.topRight,
            child: Icon(
              Icons.remove_circle,
              color: Colors.red,
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
            Icon(
              Icons.work_rounded,
              color: Colors.white,
              size: 20,
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
}
