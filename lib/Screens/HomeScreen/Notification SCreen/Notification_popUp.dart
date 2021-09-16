import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PopUp extends StatelessWidget {
  const PopUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 16,
              child: Container(
                child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Mark all as read',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.pop(context);
                            },
                              child: Icon(FontAwesomeIcons.windowClose, color: Colors.red,))
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 20),
                      child: Text(
                        'Are you sure you want to mark all notification as read?',
                        textAlign: TextAlign.center,
                        style:
                        TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 200, top: 20, bottom: 20),
                      child: Row(
                        children: [
                          Text(
                            'Cancel',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                          SizedBox(width: 20,),
                          Text(
                            'Yes',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      icon: Icon(
        Icons.check_circle,
        color: Colors.white,
      ),
    );
  }
}
