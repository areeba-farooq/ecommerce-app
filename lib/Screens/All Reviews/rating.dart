import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class Rating extends StatelessWidget {
  const Rating({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RatingBar.builder(
          initialRating: 3,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemSize: 20,
          itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: Theme.of(context).primaryColor,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
        SizedBox(width: 80,),
        Text(
          '21-June-2020',
          style: TextStyle(fontSize: 15, color: Colors.grey),
        ),
      ],
    );
  }
}