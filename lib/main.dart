import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'Screens/CoursesScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'getting_assets_from_firebase/get_assets.dart';



Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );


    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
          email: 'user@example.com', password: '123456');
      print('User signed in: ${userCredential.user}');
      getPhotoURL('kelly-sikkema-YXWoEn5uOvg-unsplash.jpg');
      getPhotoURL('kelly-sikkema-sK0dKnDOcEM-unsplash.jpg');
      getPhotoURL('videos/pexels-cottonbro-8746336 (Original).mp4');
    } catch (e) {
      print('Error signing in: $e');
    }

  print('Current user: ${FirebaseAuth.instance.currentUser}');
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Thin U',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: CoursesScreen(),
    );
  }
}




