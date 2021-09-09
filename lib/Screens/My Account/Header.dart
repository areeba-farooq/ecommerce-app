import 'package:flutter/material.dart';


class AccountHeader extends StatelessWidget {
  const AccountHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 100,
      width: double.infinity,
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('images/profile4.jpg'),
            radius: 40,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 18.0),
                child: Text('Alina Khan', style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20
                ),),
              ),
              SizedBox(height: 5,),
              Padding(
                padding:  EdgeInsets.only(left: 18.0),
                child: Text('Active since Monday', style: TextStyle(
                    color: Colors.white,
                    fontSize: 13
                ),),
              ),
            ],
          )
        ],
      ),
    );
  }
}
