import 'package:flutter/material.dart';
import 'package:practice/bg_image.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login Page By Mohit"),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            BgImage(),
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 15, right: 15),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      child: Form(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Enter name", labelText: "Name"),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: "Enter Password",
                                  labelText: "Password"),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            RaisedButton(
                              color: Colors.blue[300],
                              child: Text(
                                "Sign In",
                                style: TextStyle(color: Colors.black87),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, "/home");
                              },
                            )
                          ],
                        ),
                      )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
