import 'package:flutter/cupertino.dart';
import 'package:natura/screens/login_screen.dart';
import 'package:natura/screens/register_page1_screen.dart';
import 'package:natura/screens/register_page2_screen.dart';
import 'package:natura/screens/welcome_screen.dart';

Map<String, WidgetBuilder> getRoutes(){
  return <String, WidgetBuilder>{
    'welcome' :( _ ) => WelcomeScreen(),
    'register_1' :( _ ) => RegisterPage1Screen(),
    'register_2' :( _ ) => RegisterPage2Screen(),
    'login' :( _ ) => LoginScreen(),
  };
}