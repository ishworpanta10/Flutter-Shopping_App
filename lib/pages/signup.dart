import 'package:shopping_cart_ui/resources/firebase_auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController _emailc = TextEditingController();
  final TextEditingController _passwordc = TextEditingController();
  final TextEditingController _confirmPasswordc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Wrap(
        children: <Widget>[
          Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(220.0)),
                child: Container(
                  color: Colors.yellow[700],
                  width: 130.0,
                  height: 70.0,
                ),
              ),
              Positioned(
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(400),
                          bottomRight: Radius.circular(500.0)),
                      child: Container(
                        color: Colors.green,
                        width: 60.0,
                        height: 130.0,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 25.0,
                  ),
                  SizedBox(height: 25.0),
                  Column(
                    children: <Widget>[
                      Text(
                        "I & P",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 80.0,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Register',
                        style:
                            TextStyle(fontSize: 40.0, color: Colors.grey[700]),
                      ),
                      Text('Page',
                          style: TextStyle(
                              fontSize: 40.0, color: Colors.green[600]))
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              "Sign Up",
                              style: TextStyle(
                                  fontSize: 25.0, color: Colors.black),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          controller: _emailc,
                          decoration: InputDecoration(
                              hintText: "example@gmail.com",
                              hintStyle: TextStyle(color: Colors.grey[500]),
                              labelText: "Email",
                              labelStyle: TextStyle(color: Colors.grey[500]),
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide.none),
                              icon: Text('@',
                                  style: TextStyle(
                                      fontSize: 26.0,
                                      color: Colors.orange[700]))),
                        ),
                        Divider(
                          color: Colors.blueGrey,
                        ),
                        TextFormField(
                          controller: _passwordc,
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "********",
                              hintStyle: TextStyle(color: Colors.grey[500]),
                              labelText: "Password",
                              labelStyle: TextStyle(color: Colors.grey[500]),
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide.none),
                              icon: Icon(
                                Icons.lock,
                                color: Colors.orange[700],
                              )),
                        ),
                        Divider(
                          color: Colors.blueGrey,
                        ),
                        TextFormField(
                          controller: _confirmPasswordc,
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "********",
                              hintStyle: TextStyle(color: Colors.grey[500]),
                              labelText: "Confirm Password",
                              labelStyle: TextStyle(color: Colors.grey[500]),
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide.none),
                              icon: Icon(
                                Icons.lock,
                                color: Colors.orange[700],
                              )),
                        ),
                        // RaisedButton(
                        //   splashColor: Colors.redAccent,
                        //   shape: RoundedRectangleBorder(
                        //       borderRadius: BorderRadius.circular(70.0)),
                        //   color: Colors.greenAccent,
                        //   child: Text(
                        //     "Login",
                        //     style: TextStyle(fontSize: 30.0),
                        //   ),
                        //   onPressed: () {},
                        // )
                        Divider(),
                        Material(
                          elevation: 2.0,
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(30.0),
                          child: Container(
                            height: 50.0,
                            width: 300.0,
                            child: Center(
                              child: GestureDetector(
                                  child: Text("Sign up",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 30.0)),
                                  onTap: _signup),
                            ),
                          ),
                        ),
                        FlatButton(
                          child: Center(
                            child: Text(
                              "Already registered ? Login",
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                          onPressed: () =>
                              Navigator.pushNamed(context, 'login'),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  void _signup() async {
    print(_emailc.text);
    print(_passwordc.text);
    print(_confirmPasswordc.text);
    try {
      FirebaseUser user =
          await FirebaseAuthProvider().signup(_emailc.text, _passwordc.text);
      if (user == null) print("Signup failed");
      if (user != null) {
        Navigator.pushReplacementNamed(context, 'home');
      }
    } catch (e) {
      print(e.message);
    }
  }
}
