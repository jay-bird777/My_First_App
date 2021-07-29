import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/homePage1.dart';

class UploadPage1 extends StatefulWidget {
  UploadPage1({Key? key}) : super(key: key);
  String id = 'uploadPage';

  @override
  _UploadPage1State createState() => _UploadPage1State();
}

class _UploadPage1State extends State<UploadPage1> {

  var _image;
  final picker = ImagePicker();
  Future getImageGallery() async{
    final pickedImage =  await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if(pickedImage != null){
        _image = File(pickedImage.path);
      }else{
        print('No Image Selected');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if(_image == null)
      getImageGallery();
    else
      null;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          toolbarHeight: 80,
          backgroundColor: Colors.white,
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
              Text(
                'Imagine',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontFamily: 'DancingScript',
                ),
              ),
              SizedBox(
                height: 5,
                width: 5,
              )
            ],
          ),
        ),
        body: Container(
          width: double.maxFinite,
          height: 200,
          color: Colors.blue,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20,),
                width: 120,
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: FileImage(_image),
                  ),
                ),
              ),
              Text('More features coming soon!!'),
            ],
          ),
        ),
      ),
    );
  }
}
