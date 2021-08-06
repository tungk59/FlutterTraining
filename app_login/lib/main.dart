import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(Login());
}

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          // color: Colors.lightBlueAccent,
          constraints: BoxConstraints.expand(),
          padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black26,
                  ),
                  padding: EdgeInsets.all(10.0),
                  child: FlutterLogo(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: Container(
                  width: double.infinity,
                  height: 70,
                  child: Center(
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Account",
                    focusColor: Colors.blueAccent,
                    // suffixIconConstraints: ,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    suffixIcon: Icon(Icons.mail_sharp),
                    // icon: Icon(Icons.supervisor_account_sharp),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: TextField(
                  obscureText: true,
                  cursorHeight: 20,

                  decoration: InputDecoration(

                      labelText: "Password",
                      hintText: "Input PassWord",
                      suffix: TextButton(
                        onPressed: (){
                        },
                        child: Text(
                          "Show",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30.0)),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Sign In"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
