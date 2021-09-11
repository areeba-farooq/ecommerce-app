import 'package:dubuz_app/Screens/Search%20Results/search_results.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'buttons.dart';
import 'heading.dart';


enum AdType {Private, Professional}
enum Transmission {Automatic, Manual}


class Filter extends StatefulWidget {

  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {

  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    _controller.text = "0"; // Setting the initial value for the field.
  }

  AdType type = AdType.Private;
  Transmission _transmission = Transmission.Automatic;

  List<String> categories = [
    'Select any Category',
    'All Categories',
    'Cars & Bikes',
    'Electronics & Appliances',
    'Home & LifeStyle',
    'Real Estate',
    'Jobs',
    'Services',
    'Entertainment',
    'Mobile & Tablets',
  ];
  late String selectedCategory = 'Select any Category';

  List<String> subCategories = [
    'Select any Sub category',
    '# Option 1',
    '# Option 2',
    '# Option 3',
    '# Option 4',
    '# Option 5',
    '# Option 6',
  ];
  late String selectedSubCategory = 'Select any Sub category';

  List<String> brandName = [
    'Select any Brand Name',
    'Audi',
    'Maruti',
    'Civic',
    'Honda',
    'Corolla',
    'Leyana',
  ];
  late String selectedBrandName = 'Select any Brand Name';
  bool value = false;

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).accentColor,
        elevation: 0.0,
        leading: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchResult()));
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          'Filter',
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 230,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Heading(name: 'Categories',),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: DropdownButton(
                      isExpanded: true,
                      value: selectedCategory,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedCategory = newValue!;
                        });
                      },
                      items: categories.map((category) {
                        return DropdownMenuItem(
                          child: new Text(category),
                          value: category,
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Heading(name: 'Sub Categories'),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: DropdownButton(
                      isExpanded: true,
                      value: selectedSubCategory,
                      onChanged: (String? newVal) {
                        setState(() {
                          selectedSubCategory = newVal!;
                        });
                      },
                      items: subCategories.map((category) {
                        return DropdownMenuItem(
                          child: new Text(category),
                          value: category,
                        );
                      }).toList(),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 800,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Heading(name: 'Ad Type'),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    title: Text('Private', style: TextStyle(
                      fontSize: 18
                    ),),
                    leading: Radio(
                      activeColor: Colors.blue,
                      value: AdType.Private,
                      groupValue: type,
                      onChanged: (AdType? value) {
                        setState(() {
                          type = value!;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: Text('Professional', style: TextStyle(
                        fontSize: 18
                    ),),
                    leading: Radio(
                      activeColor: Colors.blue,
                      value: AdType.Professional,
                      groupValue: type,
                      onChanged: (AdType? value) {
                        setState(() {
                          type = value!;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 10,),
                  Heading(name: 'Brand Name'),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: DropdownButton(
                      isExpanded: true,
                      value: selectedBrandName,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedBrandName = newValue!;
                        });
                      },
                      items: brandName.map((brandName) {
                        return DropdownMenuItem(
                          child: new Text(brandName),
                          value: brandName,
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                          labelText: 'Year of Registration',
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 25,
                              letterSpacing: 0.5),
                          hintText: 'Year of Registration',
                          hintStyle: TextStyle(
                              color: Colors.grey, fontSize: 15, height: 2),

                          //to show hint text always with label text
                          floatingLabelBehavior:
                          FloatingLabelBehavior.always),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                 Heading(name: 'Transmission'),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    title: Text('Automatic', style: TextStyle(
                        fontSize: 18
                    ),),
                    leading: Radio(
                      activeColor: Colors.blue,
                      value: Transmission.Automatic,
                      groupValue: _transmission,
                      onChanged: (Transmission? value) {
                        setState(() {
                          _transmission = value!;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: Text('Manual', style: TextStyle(
                        fontSize: 18
                    ),),
                    leading: Radio(
                      activeColor: Colors.blue,
                      value: Transmission.Manual,
                      groupValue: _transmission,
                      onChanged: (Transmission? value) {
                        setState(() {
                          _transmission = value!;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Heading(name: 'Features'),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Checkbox(
                        activeColor: Colors.blue,
                        value: this.value,
                        onChanged: (bool? value) {
                          setState(() {
                            this.value = value!;
                          });
                        },
                      ),
                      Text(
                        'GPS',
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Checkbox(
                        activeColor: Colors.blue,
                        value: this.value,
                        onChanged: (bool? value) {
                          setState(() {
                            this.value = value!;
                          });
                        },
                      ),
                      Text(
                        'ABS',
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Checkbox(
                        activeColor: Colors.blue,
                        value: this.value,
                        onChanged: (bool? value) {
                          setState(() {
                            this.value = value!;
                          });
                        },
                      ),
                      Text(
                        'Air Condition',
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Checkbox(
                        activeColor: Colors.blue,
                        value: this.value,
                        onChanged: (bool? value) {
                          setState(() {
                            this.value = value!;
                          });
                        },
                      ),
                      Text(
                        'Security System',
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 340,
              width: double.infinity,
              color: Colors.white,
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Heading(name: 'Price'),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: <Widget>[
                        Text('From', style: TextStyle(
                          fontSize: 20,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w500
                        ),),
                        SizedBox(width: 20,),
                        Expanded(
                          flex: 1,
                          child: TextFormField(
                            controller: _controller,
                            keyboardType: TextInputType.numberWithOptions(
                                decimal: false, signed: false),
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            MaterialButton(
                              minWidth: 5.0,
                              child: Icon(Icons.arrow_drop_up),
                              onPressed: () {
                                int currentValue = int.parse(_controller.text);
                                setState(() {
                                  currentValue++;
                                  _controller.text =
                                      (currentValue).toString(); // incrementing value
                                });
                              },
                            ),
                            MaterialButton(
                              minWidth: 5.0,
                              child: Icon(Icons.arrow_drop_down),
                              onPressed: () {
                                int currentValue = int.parse(_controller.text);
                                setState(() {
                                  print("Setting state");
                                  currentValue--;
                                  _controller.text =
                                      (currentValue).toString(); // decrementing value
                                });
                              },
                            ),
                          ],
                        ),
                        SizedBox(width: 20,),
                        Text('To', style: TextStyle(
                            fontSize: 20,
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w500
                        ),),
                        SizedBox(width: 20,),
                        Expanded(
                          flex: 1,
                          child: TextFormField(
                            controller: _controller,
                            keyboardType: TextInputType.numberWithOptions(
                                decimal: false, signed: false),
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            MaterialButton(
                              minWidth: 5.0,
                              child: Icon(Icons.arrow_drop_up),
                              onPressed: () {
                                int currentValue = int.parse(_controller.text);
                                setState(() {
                                  currentValue++;
                                  _controller.text =
                                      (currentValue).toString(); // incrementing value
                                });
                              },
                            ),
                            MaterialButton(
                              minWidth: 5.0,
                              child: Icon(Icons.arrow_drop_down),
                              onPressed: () {
                                int currentValue = int.parse(_controller.text);
                                setState(() {
                                  print("Setting state");
                                  currentValue--;
                                  _controller.text =
                                      (currentValue).toString(); // decrementing value
                                });
                              },
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                  SizedBox(
                    height: 90,
                  ),
                  Buttons(),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),

            )
          ],
        ),
      ),
    );
  }
}

