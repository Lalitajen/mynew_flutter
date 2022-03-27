import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:myflutter/ui/Login/login_menu.dart';
import 'package:myflutter/ui/email_register/otp_get_ui.dart';
import 'package:myflutter/widgets/textstyle.dart';

class PhoneLogin extends StatefulWidget {
  const PhoneLogin({Key? key}) : super(key: key);

  @override
  _PhoneLoginState createState() => _PhoneLoginState();
}

class _PhoneLoginState extends State<PhoneLogin> {




  final globalKey = GlobalKey<FormState>();
  TextEditingController phonenumber = TextEditingController();
  TextEditingController password = TextEditingController();

  handleLogin() {
    if (globalKey.currentState!.validate()) {
      Map<String, dynamic> data = {
        "phone": phonenumber.text,
        "password": password.text,
      };
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    }
    // onPressed:() async {
    //                       var dio = Dio();
    //                       var response = await dio.post(
    //                           'http://localhost:3000/login',
    //                           data: {'name': 'jack'});
    //                       print(response);};
  }


  
  bool _isShowpassword = false;

  _handleEye() {
    setState(() {
      _isShowpassword = !_isShowpassword;
    });
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login By Phone Number')),
      body: SingleChildScrollView(
        child:  Form(
          key: globalKey,
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      IntlPhoneField(
                        obscureText: false,
                        keyboardType: TextInputType.phone,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: const InputDecoration(
                          labelText: 'Phone Number',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                            borderSide: BorderSide(color: Colors.green),
                          ),
                        ),
                        initialCountryCode: 'LA',
                        onChanged: (phone) {
                          print(phone.completeNumber);
                        },
                        controller: phonenumber,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "ກະລຸນາປ້ອນເບີໂທລະສັບຂອງທ່ານ";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        
        
                        obscureText: _isShowpassword,
                        decoration: const InputDecoration(
                        
                          //suffixIcon: IconButton(onPressed: onPressed, icon: icon)
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
                        controller: password,
                        // validator: (value) {
                        //   if (value!.isEmpty) {
                        //     return "ກະລຸນາປ້ອນລະຫັດຜ່ານຂອງທ່ານ";
                        //   }
                        //   return null;
                        // },
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
                            handleLogin();
                          },
                          async {
                            var dio = Dio();
                            var response = await dio.post(
                                'http://localhost:3000/login',
                                data: {'name': 'jack'});
                            print(response);
                            //handleLogin();
                            // Navigator.push(
                            //   context,r
                            //   MaterialPageRoute(
                            //       builder: (context) => coRnst PhoneLogin()),
                            // );
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
