import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:myflutter/forgot_password/phone_forgotpasswprd.dart';
import 'package:myflutter/ui/Login/Email_login.dart';
import 'package:myflutter/ui/Login/login_menu.dart';
import 'package:myflutter/ui/Login/phone_login.dart';
import 'package:myflutter/ui/email_register/email_information_register.dart';
import 'package:myflutter/ui/login_page.dart';
import 'package:myflutter/ui/phone_register/information_register.dart';
import 'package:myflutter/ui/email_register/otp_get_ui.dart';
import 'package:myflutter/ui/register_phone.dart';
import 'package:myflutter/ui/register_ui.dart';

import 'package:http/http.dart' as http;




// void main() async {
//   var dio = Dio();
//   final response = await dio.get('http://localhost:3000/');
//   print(response.data);
// }

// void main() async {
//   var dio = Dio();
//   var response = await dio.post('http://localhost:3000/login', data: {'name': 'jack'});
//   print(response);
// }




//################################################################################
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // title: _title,
      // home: MyStatefulWidget(),
      home: PhoneLogin(),
      debugShowCheckedModeBanner: false,
    );
  }
}
