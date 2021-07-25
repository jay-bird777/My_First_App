import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:my_app/homePage1.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {

//these are the variables for the users followers and following
  int followers= 0;
  int following= 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Color(0x44000000),
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.blueGrey,
                child: IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => HomePage1(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.black,
                  ),
                ),
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.blueGrey,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.email_rounded,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            //this container is for the avatar and background image
            Container(
              child: Stack(
                alignment: new Alignment(
                  0,
                  3.5,
                ),
                children: [
                  Container(
                    height: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/wp6612546.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    child: CupertinoButton(
                        onPressed: () {
                          showCupertinoModalPopup<void>(
                            context: context,
                            builder: (BuildContext context) => CupertinoActionSheet(
                              title: const Text('Title'),
                              message: const Text('Message'),
                              actions: <CupertinoActionSheetAction>[
                                CupertinoActionSheetAction(
                                  child: const Text(
                                      'Change Image',
                                    style: TextStyle(

                                    ),
                                  ),
                                  onPressed: () {

                                  },
                                ),
                                CupertinoActionSheetAction(
                                  child: const Text('Cancel'),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                )
                              ],
                            ),
                          );
                        },
                        child: CircleAvatar(
                          radius: 75,
                          backgroundColor: Colors.lightBlueAccent,
                          child: CircleAvatar(
                            radius: 70,
                            backgroundImage: AssetImage(
                              "images/Panda-Backgrounds-Epic-Wallpaperz.jpeg",
                            ),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 20.0,
                              ),
                            ),
                          ),
                        ),
                    ),
                  ),
                ],
              ),
            ),
            //this row is for managing the users followers and following
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    '$followers''K Followers',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    '$following''K Following',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: Text('t'),
            ),
          ],
        ),
      ),
    );
  }
}
