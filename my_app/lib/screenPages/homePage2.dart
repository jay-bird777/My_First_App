import 'package:flutter/material.dart';

import 'homePage1.dart';
import 'loginPage.dart';

class HomePage2 extends StatefulWidget {
  HomePage2({Key? key}) : super(key: key);
  String id = 'homePage2';

  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {

  bool _homePage = true;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          toolbarHeight: 80,
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
              Text(
                'Imagine',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontFamily: 'DancingScript',
                ),
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.blueGrey,
                child: IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => LoginPage(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.person_rounded,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => HomePage1(),
                      ),
                    );
                  },
                  child: Text(
                    'Post',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                TextButton(
                  onPressed: () {

                  },
                  child: Text(
                    'Maps',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          iconSize: 25,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                backgroundColor: Colors.orangeAccent,
                title: Text('Home')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                backgroundColor: Colors.green,
                title: Text('Search')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_outline),
                backgroundColor: Colors.lightBlueAccent,
                title: Text('Post')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.group_work_outlined),
                backgroundColor: Colors.redAccent,
                title: Text('Clan')
            ),
            BottomNavigationBarItem(
                icon: Stack(
                  alignment: Alignment(
                    0,
                    -1.5,
                  ),
                  children: [
                    Icon(Icons.message_outlined),
                    if(_currentIndex != 4)
                      Align(
                        alignment: Alignment(
                          0.3,
                          0.2,
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 6.0,
                        ),
                      ),
                  ],
                ),
                backgroundColor: Colors.teal,
                title: Text('Messages')
            ),
          ],
          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
