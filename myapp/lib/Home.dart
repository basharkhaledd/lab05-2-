import 'package:flutter/material.dart';
import 'package:myapp/Done.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

//this class for interface i put into it checkboxes-radiobuttons-dropDownButton-switch-TextFormFields...etc
class _HomeState extends State<Home> {
  //this varibale for radiobuttons
  String restaurant = " ";
  String restauran = " ";
  //this varibale for checkboxes and radiobuttons
  bool a = false;
  bool b = false;
  bool c = false;
  bool d = false;
  bool e = false;

  //this varibale and List for dropDownButton
  String myselecteditem = "jordan";
  List listItem = [
    "jordan",
    "syria",
    "iraq",
    "palastine",
    "egypt",
    "suadia",
    "yaman"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade50,
        appBar: AppBar(
          title: Text("marina school"),
          leading: Icon(Icons.school),
        ),
        body: Center(
          child: ListView(
            children: [
              Container(
                child: TextFormField(
                  decoration: const InputDecoration(
                    // border: UnderlineInputBorder(),
                    labelText: 'Enter your full name',
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 60),
                child: Text(
                  "where the bla bla bla?",
                  style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Colors.red),
                ),
              ),
              RadioListTile(
                  secondary: Icon(Icons.restaurant),
                  title: Text(
                    "radiobutton",
                  ),
                  subtitle: Text(
                    "bre for you",
                  ),
                  value: "radiobutton",
                  groupValue: restaurant,
                  onChanged: (val) {
                    setState(() {
                      restaurant = val.toString();
                    });
                  }),
              RadioListTile(
                  secondary: Icon(Icons.restaurant),
                  title: Text(
                    "radiobutton2",
                  ),
                  subtitle: Text(
                    "bre for you",
                  ),
                  value: "radiobutton2",
                  groupValue: restaurant,
                  onChanged: (val) {
                    setState(() {
                      restaurant = val.toString();
                    });
                  }),
              Divider(
                height: 30,
                color: Colors.green,
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 30),
                child: Text(
                  "where the bla bla bla ?",
                  style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Colors.red),
                ),
              ),
              CheckboxListTile(
                  title: Text("kfc"),
                  subtitle: Text("choose the prefer to you !"),
                  value: b,
                  onChanged: (val) {
                    setState(() {
                      b = val!;
                    });
                  }),
              CheckboxListTile(
                  title: Text("Mac"),
                  subtitle: Text(
                    "choose the prefer to you !",
                  ),
                  value: a,
                  onChanged: (val) {
                    setState(() {
                      a = val!;
                    });
                  }),
              Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 30, bottom: 30),
                child: Text(
                  "where the bla bla bla ?",
                  style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Colors.red),
                ),
              ),
              CheckboxListTile(
                  title: Image(
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRjv64YoCNOOg_WWKl4YivAVC0yj3PIaLGeg&usqp=CAU")),
                  subtitle: Text("choose the prefer to you"),
                  value: c,
                  onChanged: (val) {
                    setState(() {
                      c = val!;
                    });
                  }),
              CheckboxListTile(
                  title: Image(
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_womCcmX5csUIuIZjsetyrGz63wiJbHgJew&usqp=CAU")),
                  subtitle: Text("choose the prefer to you"),
                  value: d,
                  onChanged: (val) {
                    setState(() {
                      d = val!;
                    });
                  }),
              Divider(
                height: 30,
                color: Colors.green,
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 60),
                child: Text(
                  "where are you from?",
                  style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Colors.red),
                ),
              ),
              Container(
                width: 100,
                child: DropdownButton(
                    value: myselecteditem,
                    icon: Icon(Icons.location_city),
                    items: listItem
                        .map((e) =>
                            DropdownMenuItem(value: e, child: Text("$e")))
                        .toList(),
                    onChanged: (val) {
                      setState(() {
                        myselecteditem = val.toString();
                      });
                    }),
              ),
              Container(
                margin: EdgeInsets.only(top: 80),
                child: SwitchListTile(
                    title: Text(
                      "هل انت موافق على الاحكام والشروط",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    value: e,
                    onChanged: (val) {
                      setState(() {
                        e = val;
                      });
                    }),
              ),
              Container(
                margin: EdgeInsets.all(5),
                //this button take you to doneClass
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return Done();
                      }));
                    },
                    child: Text(
                      "save",
                      style: TextStyle(fontSize: 40),
                    )),
              )
            ],
          ),
        ));
  }
}
