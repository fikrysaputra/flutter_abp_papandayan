import 'package:firebase_auth/firebase_auth.dart';
import 'welcome.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseAuth.instance.useAuthEmulator('localhost', 8080);

  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Welcome",
    home: Welcome(),
  ));
}