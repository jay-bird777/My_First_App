
import 'dart:io';
import 'package:flutter/rendering.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/screenPages/homePage1.dart';
import 'package:my_app/screenPages/landingPage.dart';
import 'package:my_app/screenPages/seachBar.dart';
import 'package:my_app/screenPages/uploadPage1.dart';


class UserProfilePage extends StatefulWidget {
  UserProfilePage({Key? key}) : super(key: key);
  String id = 'userProfilePage';

  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {

//these are the variables for the users followers and following
  int followers= 0;
  int following= 0;

  String id = 'userProfilePage';

  String username = 'Earth_Child';
  String realName = 'Jacore Baptiste';
  String bio = 'Upcoming digital artist from nebraska blah blah blah blah';

  int _currentIndex = 0;

  var _profileImage;
  final picker = ImagePicker();

  Future getImageCamera() async{
    final pickedImage =  await picker.getImage(source: ImageSource.camera);

    setState(() {
      if(pickedImage != null){
        _profileImage = File(pickedImage.path);
      }else{
        print('No Image Selected');
      }
    });
  }

  Future getImageGallery() async{
    final pickedImage =  await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if(pickedImage != null){
        _profileImage = File(pickedImage.path);
      }else{
        print('No Image Selected');
      }
    });
  }

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
                    Icons.leaderboard,
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

                  // this line will check to see if the user is on ios or andriod and respond accordingly
                  if(Platform.isIOS)
                    Container(
                      child: CupertinoButton(
                        onPressed: () {
                          showCupertinoModalPopup<void>(
                            context: context,
                            builder: (BuildContext context) => CupertinoActionSheet(
                              title: const Text('Avatar'),
                              message: const Text('Select Avatar'),
                              actions: <CupertinoActionSheetAction>[
                                CupertinoActionSheetAction(
                                  child: const Text(
                                    'Camera',
                                    style: TextStyle(

                                    ),
                                  ),
                                  onPressed: () {
                                    getImageCamera();
                                    Navigator.pop(context);
                                  },
                                ),
                                CupertinoActionSheetAction(
                                  child: const Text('Gallery'),
                                  onPressed: () {
                                    getImageGallery();
                                    Navigator.pop(context);
                                  },
                                )
                              ],
                            ),
                          );
                        },
                        child: _profileImage != null
                            ? CircleAvatar(
                          radius: 75,
                          backgroundColor: Colors.lightBlueAccent,
                          child: CircleAvatar(
                            radius: 70,
                            backgroundImage: FileImage(_profileImage),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 20.0,
                              ),
                            ),
                          ),
                        )
                            : CircleAvatar(
                          radius: 75,
                          backgroundColor: Colors.lightBlueAccent,
                          child: CircleAvatar(
                            radius: 70,
                            child: Align(
                              alignment: Alignment.center,
                              child: CircleAvatar(
                                child: Icon(
                                  Icons.person_rounded,
                                  size: 20,
                                ),
                                radius: 50,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  if(Platform.isAndroid)
                    Container(
                      child: CupertinoButton(
                        onPressed: () {
                          showCupertinoModalPopup<void>(
                            context: context,
                            builder: (BuildContext context) => CupertinoActionSheet(
                              title: const Text('Avatar'),
                              message: const Text('Select Avatar'),
                              actions: <CupertinoActionSheetAction>[
                                CupertinoActionSheetAction(
                                  child: const Text(
                                    'Camera',
                                    style: TextStyle(

                                    ),
                                  ),
                                  onPressed: () {
                                    getImageCamera();
                                    Navigator.pop(context);
                                  },
                                ),
                                CupertinoActionSheetAction(
                                  child: const Text('Gallery'),
                                  onPressed: () {
                                    getImageGallery();
                                    Navigator.pop(context);
                                  },
                                )
                              ],
                            ),
                          );
                        },
                        child: _profileImage != null
                            ? CircleAvatar(
                          radius: 75,
                          backgroundColor: Colors.lightBlueAccent,
                          child: CircleAvatar(
                            radius: 70,
                            backgroundImage: FileImage(_profileImage),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 20.0,
                              ),
                            ),
                          ),
                        )
                            : CircleAvatar(
                          radius: 75,
                          backgroundColor: Colors.lightBlueAccent,
                          child: CircleAvatar(
                            radius: 70,
                            child: Align(
                              alignment: Alignment.center,
                              child: CircleAvatar(
                                child: Icon(
                                  Icons.person_rounded,
                                  size: 20,
                                ),
                                radius: 50,
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
                    '$followers''Followers',
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
                    '$following''Following',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 30, 10, 10),
                        child: Text(
                          username,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 10 , 10, 10),
                      child: Text(
                        realName,
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(2, 15, 2, 10),
                      width: 200,
                      child: Text(
                        bio,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.fromLTRB(10, 120, 10, 10),
                      child: Text(
                        'No post yet',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
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
