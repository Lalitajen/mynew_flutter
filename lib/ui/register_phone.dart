import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:myflutter/ui/phone_register/information_register.dart';
import 'package:myflutter/ui/email_register/otp_get_ui.dart';
import 'package:myflutter/widgets/textstyle.dart';

//import 'package:intl_phone_field/intl_phone_field.dart';
//import 'package:myapp/ui/login_ui.dart';
//import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class RegisterPhone extends StatefulWidget {
  const RegisterPhone({Key? key}) : super(key: key);

  @override
  _RegisterPhoneState createState() => _RegisterPhoneState();
}

class _RegisterPhoneState extends State<RegisterPhone> {
  @override
  Widget build(BuildContext context) {
    return PhoneOtp();
  }
}
class PhoneOtp extends StatefulWidget {
   PhoneOtp({Key? key}) : super(key: key);

  @override
  _PhoneOtpState createState() => _PhoneOtpState();
}

class _PhoneOtpState extends State<PhoneOtp> {
  // 4 text editing controllers that associate with the 4 input fields
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();
  final TextEditingController _fieldFive = TextEditingController();
  final TextEditingController _fieldSix = TextEditingController();

  // This is the entered code
  // It will be displayed in a Text widget
  String? _otp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('KindaCode'),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),

              Text(
                "Register ",
                //style: TextStyle(fontSize: 30, color: Colors.blue),
                style: GoogleFonts.lato(
                    fontStyle: FontStyle.italic,
                    fontSize: 45,
                    color: Colors.blue),
              ),
              Text(
                "By Phone Number ",
                //style: TextStyle(fontSize: 30, color: Colors.blue),
                style: GoogleFonts.lato(
                    fontStyle: FontStyle.italic,
                    fontSize: 25,
                    color: Colors.blue),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "We had send you an OTP code  ",
                //style: TextStyle(fontSize: 30, color: Colors.blue),
                style: GoogleFonts.notoSansBassaVah(
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    color: Color.fromARGB(255, 54, 54, 54)),
                textAlign: TextAlign.left,
              ),
              Mystyle().Textstyle2(
                'and Please enter Your OTP',
              ),
              const SizedBox(
                height: 30,
              ),
              // Implement 4 input fields
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OtpInput(_fieldOne, true),
                    OtpInput(_fieldTwo, false),
                    OtpInput(_fieldThree, false),
                    OtpInput(_fieldFour, false),
                    OtpInput(_fieldFive, false),
                    OtpInput(_fieldSix, false)
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: 250),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: ((context) => HomePage())),
                    );
                  },
                  child: Text("Resend code"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                // style: ButtonStyle(
                //   backgroundColor: MaterialStateProperty.all(Colors.amber),
                // ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(250, 50),
                  primary: Colors.amber,
                ),

                onPressed: () {
                  setState(
                    () {
                      _otp = _fieldOne.text +
                          _fieldTwo.text +
                          _fieldThree.text +
                          _fieldFour.text +
                          _fieldFive.text +
                          _fieldSix.text;
                    },
                  );
                },

                child: const Text(
                  'Submit',
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              // Display the entered OTP code
              Text(
                _otp ?? 'Please enter OTP',
                style: const TextStyle(fontSize: 25, color: Colors.red),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(40, 220, 40, 50),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const PhoneInformationRegister()),
                    );
                  },
                  child: const Text(
                    'Back',
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

// Create an input widget that takes only one digit
class OtpInput extends StatelessWidget {
  final TextEditingController controller;
  final bool autoFocus;
  const OtpInput(this.controller, this.autoFocus, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 50,
      child: TextField(
        autofocus: autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        cursorColor: Theme.of(context).primaryColor,
        decoration: const InputDecoration(
            border: OutlineInputBorder(),
            counterText: '',
            hintStyle: TextStyle(color: Colors.black, fontSize: 20.0)),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}

