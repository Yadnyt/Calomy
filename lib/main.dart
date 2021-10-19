import 'package:firebase_core/firebase_core.dart';
import'package:flutter/material.dart';
import 'package:login_page/services/authservice.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
      runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //this widget is the root of application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthService().handleAuth(),
      debugShowCheckedModeBanner: false,
    );
  }
}