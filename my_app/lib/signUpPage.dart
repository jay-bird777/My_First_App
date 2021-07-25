import 'package:flutter/material.dart';

import 'homePage1.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {


  bool hideOrShow = true;

  void showText() {
    setState(() {
      hideOrShow = !hideOrShow;
    });
  }

  var _emailKey = GlobalKey<FormState>();
  var _usernameKey = GlobalKey<FormState>();
  var _passwordKey = GlobalKey<FormState>();

  var _emailError;
  var _passwordError;
  var _usernameError;

  TextEditingController _passwordController2 = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.blueGrey,
                  backgroundImage: AssetImage('images/1600w-SNVtBzp-x7g.webp'),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'Imagine',
                  style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  width: 350,
                  child: Form(
                    key: _emailKey,
                    child: TextFormField(
                      controller: _emailController,
                      maxLines: 1,
                      keyboardType: TextInputType.emailAddress,
                      scrollPadding: EdgeInsets.all(10),
                      decoration: InputDecoration(
                        errorText: _emailError,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: '@Example.com'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 32.0,
                ),
                Container(
                  width: 350,
                  child: Form(
                    key: _usernameKey,
                    child: TextFormField(
                      controller: _usernameController,
                      maxLines: 1,
                      scrollPadding: EdgeInsets.all(10),
                      decoration: InputDecoration(
                          errorText: _usernameError,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: 'Username'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 32.0,
                ),
                Container(
                  width: 350,
                  child: Form(
                    key: _passwordKey,
                    child: TextFormField(
                      controller: _passwordController2,
                      maxLines: 1,
                      obscureText: hideOrShow,
                      scrollPadding: EdgeInsets.all(10),
                      decoration: InputDecoration(
                          errorText: _passwordError,
                          suffixIcon: IconButton(
                            icon: hideOrShow
                                ? Icon(Icons.visibility)
                                : Icon(Icons.visibility_off),
                            onPressed: () {
                              showText();
                            },
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: 'Password'),
                    ),
                  ),
                ),

                SizedBox(
                  height: 65.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (_usernameController.text.length < 3)
                        _usernameError = 'Enter at least 3 chars';
                      else if (_usernameController.text.length > 10)
                        _usernameError = 'Enter less than 10 chars';
                      else
                        _usernameError = null;


                      if  (_passwordController2.text.length < 6)
                        _passwordError = 'Enter at least 6 chars';
                      else if (_passwordController2.text.length > 15)
                        _passwordError = 'Enter less than 15 chars';
                      else
                        _passwordError = null;

                    });
                  },
                  child: Text('Submit'),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'Already have an account?',
                  style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.blueGrey.shade700),
                ),

                TextButton(
                  style: ButtonStyle(
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => HomePage1(),
                      ),
                    );
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.blueGrey.shade700),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
