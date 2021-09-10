import 'package:flutter/material.dart';


class EditPicture extends StatelessWidget {
  const EditPicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: Theme.of(context).primaryColor,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 40,
            child: Icon(
              Icons.person,
              color: Colors.grey,
              size: 40,
            ),
          ),
          Positioned(
            bottom: 10,
            left: 220,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  borderRadius: BorderRadius.circular(30)),
              child: Icon(
                Icons.edit,
                color: Colors.white,
                size: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}

