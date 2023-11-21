import 'package:xxx/screen/MyHomePage.dart';
import 'package:xxx/screen/new_screen.dart';
import 'package:flutter/material.dart';
import 'package:xxx/screen/Button.dart';
import 'package:xxx/screen/showAlert.dart';
import 'package:xxx/screen/list.dart';

class AppRouter {
  static const home = '';
  static const newscreen = 'newscreen';
  static const button = 'button';
  static const alert1 = 'alert';
  static const isg = 'list item';
  static get all => <String, WidgetBuilder>{
        home: (context) => const MyHomePage(),
        newscreen: (context) => const NewScreen(),
        button: (context) => const Mybutton(),
        alert1: (context) => const Myalert(),
        isg: (context) => const Mylistview()
      };
}
