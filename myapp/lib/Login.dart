import 'package:flutter/material.dart';
import 'package:myapp/Home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

//this class is interFce loginpage
class _LoginState extends State<Login> {
  bool a = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: Container(
        color: Colors.blue.shade200,
        margin: EdgeInsets.only(top: 200, right: 20, left: 20, bottom: 200),
        child: Column(
          children: [
            Container(
              child: TextFormField(
                decoration: const InputDecoration(
                    // border: UnderlineInputBorder(),
                    labelText: 'Enter username',
                    icon: Icon(Icons.person)),
              ),
            ),
            Container(
              child: TextFormField(
                decoration: const InputDecoration(
                    // border: UnderlineInputBorder(),
                    labelText: 'Enter password',
                    icon: Icon(Icons.password)),
              ),
            ),
            CheckboxListTile(
                title: Text("save password on this web"),
                value: a,
                onChanged: (val) {
                  setState(() {
                    a = val!;
                  });
                }),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return Home();
                    }));
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 40),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
