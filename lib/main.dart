import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:natura/routes/routes.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Color(0xffFF6501),
        statusBarIconBrightness: Brightness.light,
      )
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'welcome',
      routes: getRoutes(),
      theme: ThemeData.light().copyWith(

        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
            brightness: Brightness.dark,
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.black),
            elevation: 0
          ),

      ),
    );
  }
}