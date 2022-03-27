import 'package:date_time_picker/date_time_picker.dart';
import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:myflutter/ui/email_register/otp_get_ui.dart';
import 'package:myflutter/ui/register_phone.dart';
import 'package:myflutter/ui/register_ui.dart';
import 'package:myflutter/widgets/textstyle.dart';
//import 'package:myapp/datetime/DateTime.dart';
//import 'package:molel/model_ui.dart';

class EmailInformationRegister extends StatefulWidget {
  const EmailInformationRegister({Key? key}) : super(key: key);

  @override
  _EmailInformationRegisterState createState() =>
      _EmailInformationRegisterState();
}

class _EmailInformationRegisterState extends State<EmailInformationRegister> {
  bool _isShowPassword = false;

  _handleEye() {
    setState(() {
      _isShowPassword = !_isShowPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: SingleChildScrollView(
        child: Form(
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Mystyle().Textstyle1('Register'),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 28),
                            child: Mystyle().Textstyle2('by Email'),
                            // Text(
                            //     "by Phone Number",
                            //     textAlign: TextAlign.center,
                            //   ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Mystyle().Textstyle2('Plz input all of your imformation'),
                      // const SizedBox(
                      //   height: 100,
                      //   width: 50,
                      //   child: ColoredBox(color: Colors.red),
                      // ),
                      const SizedBox(
                        height: 20,
                      ),

                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(120, 5, 50, 5),
                            child: CircleAvatar(
                              radius: 58,
                              backgroundImage: const NetworkImage(
                                  "https://img.icons8.com/fluency/344/parrot.png"),
                              child: Stack(
                                children: const <Widget>[
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: CircleAvatar(
                                      radius: 18,
                                      backgroundColor: Colors.white70,
                                      child: Icon(CupertinoIcons.camera),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 1),
                        child: Column(
                          children: [
                            const TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                ),
                                labelText: 'First Name',
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                ),
                                labelText: 'Last Name',
                                labelStyle: TextStyle(),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextDropdownFormField(
                              options: ["Male", "Female", "Other"],
                              decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.transgender),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                ),
                                //fillColor: Colors.amber,
                                suffixIcon: Icon(Icons.arrow_drop_down),
                                labelText: "Gender", labelStyle: TextStyle(),
                              ),
                              dropdownHeight: 120,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            DateTimePicker(
                              //fieldLabelText: 'Date',
                              decoration: const InputDecoration(
                                labelText: 'Date of Birth',
                                labelStyle: TextStyle(),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                ),
                              ),

                              initialValue: '',
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2100),

                              onChanged: (val) => print(val),
                              validator: (val) {
                                print(val);
                                return null;
                              },
                              onSaved: (val) => print(val),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.home),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                ),
                                labelText: 'Address',
                                labelStyle: TextStyle(),
                                hintText: "village: Phapho village",
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.email),
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
                            TextField(
                              // obscureText: _isShowPassword,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    _handleEye();
                                  },
                                  icon: Icon(Icons.visibility),
                                ),
                                //suffixIcon: Icon(Icons.visibility),
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
                            const TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                ),
                                labelText: 'Confirm Password',
                                labelStyle: TextStyle(),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //ModelUi(title)
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
                    MaterialPageRoute(
                        builder: (context) => const RegisterPage()),
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
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 205),
                  child: const Text(
                    'Next',
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget imageprofile() {
//   return Center(
//     child: Stack(
//       children: <Widget>[
//         CircleAvatar(
//           radius: 50.0,
//           backgroundImage:
//               NetworkImage("https://img.icons8.com/fluency/344/parrot.png"),
//         ),
//         Positioned(
//           bottom: 20.0,
//           right: 20.0,
//           child: InkWell(
//             onTap: () {
//               show
//               //showMenu(context: context, position: bottomsheet(), items: items)
//               // showBottomSheet(context: context, builder: ((Builder)=>bottomsheet()),);
//             },
//             child: Icon(
//               Icons.camera_alt,
//               color: Colors.teal,
//               size: 30.0,
//             ),
//           ),
//         ),
//       ],
//     ),
//   );
// }

// Widget bottomsheet() {
//   return Container(
//     height: 100.0,
//     width: 100.0,
//     margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//     child: Column(
//       children: [
//         Mystyle().Textstyle2('Choose Profile Photo'),
//         SizedBox(
//           height: 20,
//         ),
//         Row(
//           children: <Widget>[
//             TextButton.icon(
//               icon: Icon(Icons.camera),
//               onPressed: (){},
//               label: Mystyle().Textstyle2("camera"),
//             ),
//             TextButton.icon(
//               icon: Icon(Icons.camera),
//               onPressed: (){},
//               label: Mystyle().Textstyle2("Gallery"),
//             ),
//           ],
//         )
//       ],
//     ),
//   );
// }


//Expanded 