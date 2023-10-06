  import 'dart:developer';

  import 'package:firebase_storage/firebase_storage.dart';
  import 'package:firebase_auth/firebase_auth.dart';



  Future<String?> getPhotoURL(String imagePath) async {
    final Reference ref = FirebaseStorage.instance.ref().child(imagePath);

    try {
      final url = await ref.getDownloadURL();
      print(url);
      return url;
    } catch (e) {
      print('Error getting photo URL: $e');
      return null;
    }
  }