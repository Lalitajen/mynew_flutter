import 'package:flutter/material.dart';
import 'package:myflutter/ui/email_register/email_information_register.dart';
import 'package:myflutter/ui/login_page.dart';
import 'package:myflutter/ui/phone_register/information_register.dart';

//import 'package:project/ui/login_ui.dart';
//import 'package:project/ui/register_phone.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(height: 70),
                const CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(
                      "https://img.icons8.com/fluency/344/parrot.png"),
                ),
                const SizedBox(height: 50),
                const Text(
                  'Register',
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
                            builder: (context) =>
                                const PhoneInformationRegister()),
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
                            builder: (context) => const EmailInformationRegister()),
                      );
                    },
                    label: const Text('By Email'),
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
            padding: const EdgeInsets.all(20.0),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              child: const Text(
                'Back',
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
