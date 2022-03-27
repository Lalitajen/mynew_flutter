import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:myflutter/ui/Login/login_menu.dart';
import 'package:myflutter/widgets/textstyle.dart';

class EmailLogin extends StatefulWidget {
  const EmailLogin({Key? key}) : super(key: key);

  @override
  _EmailLoginState createState() => _EmailLoginState();
}

class _EmailLoginState extends State<EmailLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login By E-mail'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                        labelText: 'Email',
                        hintText: "@gmail.com",
                        labelStyle: TextStyle(),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    const TextField(
                      // obscureText: _isShowPassword,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.visibility),
                        //icon: Icon(Icons.visibility),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                        labelText: 'Password',
                        labelStyle: TextStyle(),
                        hintText: " input your password",
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 200),
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: ((context) => HomePage())),
                          // );
                        },
                        child: Text("Forget Password"),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 45,
                      width: 310,
                      child: ElevatedButton.icon(
                        icon: Icon(Icons.login),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EmailLogin()),
                          );
                        },
                        label: const Text('Login'),
                        style: ElevatedButton.styleFrom(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
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
                    MaterialPageRoute(builder: (context) => const LoginMenu()),
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
              //     //   MaterialPageRoute(builder: (context) => const HomePage()),
              //     // );
              //   },
              //   child: Padding(
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
