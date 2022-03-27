import 'package:flutter/material.dart';
import 'package:myflutter/ui/Login/Email_login.dart';
import 'package:myflutter/ui/Login/phone_login.dart';
import 'package:myflutter/ui/login_page.dart';

class LoginMenu extends StatefulWidget {
  const LoginMenu({Key? key}) : super(key: key);

  @override
  _LoginMenuState createState() => _LoginMenuState();
}

class _LoginMenuState extends State<LoginMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 70),
                const CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(
                      "https://img.icons8.com/fluency/344/parrot.png"),
                ),
                const SizedBox(height: 50),
                const Text(
                  'Login',
                  style: TextStyle(fontSize: 25),
                ),
                const SizedBox(height: 50),
                SizedBox(
                  width: 200,
                  height: 40,
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.phone),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PhoneLogin()),
                      );
                    },
                    label: const Text('Phone Number'),
                  ),
                ),
                const SizedBox(height: 50),
                SizedBox(
                  width: 200,
                  height: 40,
                  child: ElevatedButton.icon(
                    icon: Icon(
                      Icons.email,
                    ),
                    // style: ElevatedButton.styleFrom({
                    // }),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EmailLogin()),
                      );
                    },
                    label: const Text('By E-mail'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Row(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: const Text(
                    'Back',
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              // TextButton(
              //   onPressed: () {
              //     // Navigator.push(
              //     //   context,
              //     //   MaterialPageRoute(
              //     //       builder: (context) => const LoginPage ()),
              //     // );
              //   },
              //   child: Padding(R
              //     padding: EdgeInsets.only(left: 205),
              //     child: const Text(
              //       'Next',
              //       textAlign: TextAlign.left,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
