import 'package:flutter/material.dart';
import 'package:more_widget/other_page//clipping_part.dart';
import 'package:more_widget/logIn/register_screen.dart';
import 'package:more_widget/logIn/home_screen.dart';
import 'package:more_widget/logIn/login_screen.dart';
import 'package:more_widget/logIn/forget_password_screen.dart';
import 'package:more_widget/other_page/loginForm.dart';

void main() => runApp(MyApp());


 class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return const MaterialApp(
        home: Login1(),
     );
   }
 }
