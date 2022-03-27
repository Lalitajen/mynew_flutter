import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Mystyle{
  Widget Textstyle1(String text) => Text(text, style: GoogleFonts.lato(
                      fontStyle: FontStyle.italic,
                      fontSize: 50,
                      color: Colors.blue),);
  
  Widget Textstyle2(String text) => Text(text, style: GoogleFonts.lato(
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                      color: Color.fromARGB(255, 68, 68, 68)),);
  
  Widget Textstyle3(String text) => Text(text, style: GoogleFonts.supermercadoOne(
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                      color: Colors.blue),);
  
  Widget Textstyle4(String text) => Text(text, style: GoogleFonts.supermercadoOne(
                      //fontStyle: FontStyle.italic,
                      fontSize: 20,
                      color: Colors.blue),);

  Mystyle();
}
