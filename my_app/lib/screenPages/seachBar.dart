import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/screenPages/uploadPage1.dart';

import 'homePage1.dart';


class SearchBar extends StatefulWidget {
  SearchBar({Key? key}) : super(key: key);
  String id = 'searchPage';

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {


  String id = 'searchBar';
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(30),
                height: 50,
                width: 400,
                child: TextFormField(

                ),
              ),
              Container(

              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          iconSize: 25,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                backgroundColor: Colors.orangeAccent,
                title: Text('Home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                backgroundColor: Colors.green,
                title: Text('Search')),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_outline),
                backgroundColor: Colors.lightBlueAccent,
                title: Text('Post')),
            BottomNavigationBarItem(
                icon: Icon(Icons.group_work_outlined),
                backgroundColor: Colors.redAccent,
                title: Text('Clan')),
            BottomNavigationBarItem(
                icon: Stack(
                  alignment: Alignment(
                    0,
                    -1.5,
                  ),
                  children: [
                    Icon(Icons.message_outlined),
                    if (_currentIndex != 4)
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
                title: Text('Messages')),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
            if(index == 0)
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomePage1(),
                  )
              );
            if(index == 1)
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => SearchBar(),
                  )
              );
            if(index == 2)
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => UploadPage1(),
                  )
              );

          },
        ),
      ),
    );
  }
}
