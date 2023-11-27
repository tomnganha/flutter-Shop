import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/AuthPage.dart';
import 'package:flutter_application_1/pages/CartPage.dart';
import 'package:flutter_application_1/pages/HomePage.dart';
// import 'package:flutter_application_1/pages/LoginPage.dart';
import 'package:flutter_application_1/pages/ItemPage.dart';

import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   runApp(
//     DevicePreview(
//       enabled: true,
//       builder: (context) => MyApp(),
//     ),
//   );
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: AuthPage(),
      theme: ThemeData(scaffoldBackgroundColor: Color(0xFFCEDDEE)),
      routes: {
        "homePage": (context) => HomePage(),
        "itemPage": (context) => ItemPage(),
        "cartPage": (context) => CartPage(),
      },
    );
  }
}
