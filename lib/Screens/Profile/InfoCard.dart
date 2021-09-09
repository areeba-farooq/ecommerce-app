import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Details(text: '+91 0123456789', icon: Icons.phone,),
          Details(text: 'demo455@gmail.com', icon: Icons.email_outlined,),
          Details(text: 'www.infodemo.com', icon: Icons.alternate_email,),
        ],
      ),

    );
  }
}

class Details extends StatelessWidget {
 final String text;
 final IconData icon;
 Details({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.black,),
          SizedBox(width: 10,),
          Text(text)
        ],
      ),
    );
  }
}
