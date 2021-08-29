import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/Constant1.dart';
import 'package:medical_app/chatSc/chat_body.dart';
import 'package:medical_app/chatSc/chat_message.dart';
import 'package:medical_app/data/Admin%20Dashboard.dart';
import 'package:medical_app/data/AllDonation.dart';
import 'package:medical_app/data/Profile.dart';
import 'package:medical_app/data/fila.dart';
import 'package:medical_app/data/test.dart';
import 'package:medical_app/login/AdminLog.dart';
import 'package:medical_app/login/LoginMember.dart';
import 'package:medical_app/login/SigUpMem.dart';
import 'package:medical_app/main_page.dart';
import 'package:sizer/sizer.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'UserScreens/User.dart';
import 'bottomBarUser.dart';
import 'data/bottomBarAdmin.dart';
import 'medcineform.dart';
Color color = Colors.red;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (BuildContext context, orientation, devicetype) {
      return MaterialApp(
        title: 'Health App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        
        home: BottomBarUser(),
        
      );
    });
  }
}
