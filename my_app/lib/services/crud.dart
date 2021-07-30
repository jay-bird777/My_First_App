


import 'package:cloud_firestore/cloud_firestore.dart';

class CrudMethods{
FirebaseFirestore firestore = FirebaseFirestore.instance;
  Future<void> addData(postData) async{

    firestore.collection("posts").add(postData).catchError((e){
      print(e);
    });
  }
}