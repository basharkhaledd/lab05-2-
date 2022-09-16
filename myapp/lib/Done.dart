import 'package:flutter/material.dart';
import 'package:myapp/Login.dart';

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Done();
  }
}

class Done extends StatefulWidget {
  const Done({super.key});

  @override
  State<Done> createState() => _DoneState();
}

//this class take information in interface home and print "تمت العملية بنجاح"
class _DoneState extends State<Done> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 100, left: 50),
            child: Text(
              "تمت العملية بنجاح  ",
              style: TextStyle(fontSize: 50),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, right: 170),
            child: Text(
              "Done...",
              style: TextStyle(fontSize: 40),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 200),
            //this button will back you to the loginPage
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return Login();
                  }));
                },
                child: Text(
                  "BACK",
                  style: TextStyle(fontSize: 40),
                )),
          ),
        ],
      ),
    );
  }
}
