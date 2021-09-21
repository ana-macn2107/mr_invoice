//import 'dart:js';

//import 'dart:html';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

enum AuthMode { SignUp, Login }

class AuthScreen extends StatefulWidget {
  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  AuthMode authMode = AuthMode.Login;

  Map<String, String> authData = {'email': '', 'password': ''};

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    //print(deviceSize.height);
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 212,
            child: Image.asset('assets/images/logo2.png'),
          ),
          Center(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28),
              ),
              child: Container(
                height: deviceSize.height - 220,
                width: deviceSize.width,
                margin: EdgeInsets.only(left: 20, right: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: [
                        // Email
                        Container(
                          width: 366,
                          height: 54,
                          child: TextFormField(
                            decoration: InputDecoration(
                                labelText: 'Email',
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromRGBO(223, 225, 229, 1)))),
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              /* if (value.isEmpty || !value.contains('@')) {
                                return 'Invalid email!';
                              }
                              return null; */
                            },
                            onSaved: (value) {
                              //authData['email'] = value;
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    // Company Code
                    Container(
                      width: 366,
                      height: 54,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            //contentPadding: EdgeInsets.only(top: 8, left: 16),
                            labelText: ('Company Code'),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(223, 225, 229, 1)))),
                      ),
                    ),
                    SizedBox(height: 30),
                    // Password
                    Container(
                      width: 366,
                      height: 54,
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: ('Password'),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(223, 225, 229, 1)))),
                      ),
                    ),
                    SizedBox(height: 33),
                    RichText(
                      textAlign: TextAlign.end,
                      text: TextSpan(
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(44, 124, 183, 1),
                              fontSize: 18),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Forgot your Password?',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    print('Forgot your password?');
                                  }),
                          ]),
                    ),
                    SizedBox(height: 100),
                    Container(
                        height: 35,
                        width: 302,
                        alignment: Alignment.center,
                        child: Wrap(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('By logging in or signing up',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromRGBO(112, 112, 112, 1),
                                    )),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Color.fromRGBO(
                                                      112, 112, 112, 1)),
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text:
                                                        'you are agreeing to our '),
                                                TextSpan(
                                                    text: 'Terms of Serv',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16,
                                                        color: Color.fromRGBO(
                                                            112, 112, 112, 1)),
                                                    recognizer:
                                                        TapGestureRecognizer()
                                                          ..onTap = () {
                                                            print(
                                                                'Terms of Service');
                                                          })
                                              ]),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 30),
                                ConstrainedBox(
                                  constraints: BoxConstraints.tightFor(
                                      width: 366, height: 46),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      print('Signing In');
                                    },
                                    style: ButtonStyle(
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15))),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Color.fromRGBO(
                                                    44, 124, 183, 1)),
                                        shadowColor:
                                            MaterialStateProperty.all<Color>(
                                                Color.fromRGBO(64, 60, 67, 0.42))),
                                    child: Text(
                                      'Sign In',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                  ),
                                ),
              
                              ],
                            ),
                            
                          ],
                        )),
  
                  ],
                ),
                
              ),
              
            ),
           
          ),
        ],
      ),
    );
  }
}
