import 'package:flutter/material.dart';
import 'package:lamp_app_ui/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Temel ayarlar
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      title: 'Lamp App',
      theme: ThemeData(
      primarySwatch: Colors.amber,
 scaffoldBackgroundColor: Color(0xff1b1b1b),
      ),
      home: HomePage(),
    );
  }
}
