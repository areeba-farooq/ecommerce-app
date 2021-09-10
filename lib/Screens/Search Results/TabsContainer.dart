import 'package:flutter/material.dart';

class TabsContainer extends StatelessWidget {
  const TabsContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      color: Theme.of(context).primaryColor,
      child: Row(
        children: [
          SizedBox(
            width: 25,
          ),
          Tab(name: 'Location', icon: Icons.location_on_outlined, onTap: null,),
          VerticalLine(),
          Tab(name: 'Sort', icon: Icons.sort, onTap: (){
            showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  elevation: 16,
                  child: Container(
                    child: ListView(
                      shrinkWrap: true,
                      children: <Widget>[
                        SizedBox(height: 20,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
                          child: Text('Sort By', style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 25
                          ),),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
                          child: Text('Best Matches', style: TextStyle(
                              color: Colors.black,
                              fontSize: 18
                          ),),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
                          child: Text('Latest Posted', style: TextStyle(
                              color: Colors.black,
                              fontSize: 18
                          ),),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
                          child: Text('Lowest Price', style: TextStyle(
                              color: Colors.black,
                              fontSize: 18
                          ),),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
                          child: Text('Highest Price', style: TextStyle(
                              color: Colors.black,
                              fontSize: 18
                          ),),
                        ),
                        SizedBox(height: 20,)
                      ],
                    ),
                  ),
                );
              },
            );
          },),
          VerticalLine(),
          Tab(name: 'Filter', icon: Icons.filter_alt_outlined, onTap: null,),
        ],
      ),
    );
  }
}

class VerticalLine extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return VerticalDivider(
      color: Colors.white,
      width: 50,
      thickness: 2,
      indent: 20,
      endIndent: 20,
    );
  }
}

class Tab extends StatelessWidget {
 final String name;
 final IconData icon;
 final onTap;

 Tab({required this.name, this.onTap, required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Icon(
           icon,
            color: Colors.white,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            name,
            style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
