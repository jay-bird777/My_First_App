
import 'dart:io';

import 'package:firebase/firebase.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/screenPages/homePage1.dart';
import 'package:my_app/services/crud.dart';
import 'package:my_app/services/data_service.dart';
import 'package:random_string/random_string.dart';

class UploadPage1 extends StatefulWidget {
  UploadPage1({Key? key}) : super(key: key);
  String id = 'uploadPage';

  @override
  _UploadPage1State createState() => _UploadPage1State();
}

class _UploadPage1State extends State<UploadPage1> {


  final DataService _data = DataService();

  var image;
  String category = '';
  String desc = '';
  final FormKey = GlobalKey<FormState>();

  var _image;


  final picker = ImagePicker();
  Future getImageGallery() async{
    final pickedImage =  await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });

    if(pickedImage != null){
        _image = File(pickedImage.path);
    }else{
        print('No Image Selected');
    }

    }

  bool isChecked = false;

  CrudMethods crudMethods = new CrudMethods();

  var url = '';
  uploadPhoto() async{

    if(_image != null){
      // upload image to firebase

      StorageReference firebaseStorageRef = FirebaseStorage.instance.ref().child("postImages")
          .child("${randomAlphaNumeric(9)}.jpg") as StorageReference;
      firebaseStorageRef.put(_image);
       url = await firebaseStorageRef.getDownloadURL().toString();
    }else{
      print('No Image Selected');
    }

  }



  @override
  Widget build(BuildContext context) {
    if(_image == null){
      getImageGallery();
    }else{

    }

    return MaterialApp(
      home: Scaffold(
        
      ),
    );
  }
}
