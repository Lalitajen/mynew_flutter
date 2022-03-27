// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myflutter/ui/Login/login_menu.dart';
import 'package:myflutter/ui/register_ui.dart';

//import 'package:project/ui/register_ui.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                SizedBox(height: 70),
                CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(
                      "https://img.icons8.com/fluency/344/parrot.png"),
                ),
                SizedBox(height: 50),
                Text(
                  'Welcome to myapp',
                  style: GoogleFonts.lato(
                    fontStyle: FontStyle.italic,
                    fontSize: 30,
                    color: Colors.black),
                ),
                SizedBox(height: 50),
                SizedBox(
                  width: 200,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                     
                       Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const LoginMenu()),
                    );
                    },
                    child: Text('Login'),
                  ),
                ),
                SizedBox(height: 50),
                SizedBox(
                  width: 200,
                  height: 40,
                  child: ElevatedButton(
                    
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()),
                      );
                    },
                    child: Text('Register'),
                  ),
                ),
              ],
            ),
          ),
        ),
        // bottomNavigationBar: Text('Language'),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: Text(
              'Language',
              textAlign: TextAlign.right,
              
            ),
          ),
        ),
      ),
    );
  }
}
