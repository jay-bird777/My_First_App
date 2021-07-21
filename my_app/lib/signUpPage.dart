import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: SignUpPage(),
      ),
    );

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                child: TextFormField(
                  scrollPadding: EdgeInsets.all(10),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: '@Example.com'),
                ),
              ),
              SizedBox(
                height: 32.0,
              ),
              Container(
                width: 350,
                child: TextFormField(
                  scrollPadding: EdgeInsets.all(10),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: 'Username'),
                ),
              ),
              SizedBox(
                height: 32.0,
              ),
              Container(
                width: 350,
                child: TextFormField(
                  obscureText: hideOrShow,
                  scrollPadding: EdgeInsets.all(10),
                  decoration: InputDecoration(
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
              SizedBox(
                height: 65.0,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Submit'),
              ),
              SizedBox(
                height: 50.0,
              ),
              Text(
                'Already have an account?',
                style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.blueGrey.shade700),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                'Login',
                style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.blueGrey.shade700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
