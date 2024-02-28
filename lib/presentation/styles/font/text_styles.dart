
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle setTextStyle({
required double fontSize , 
required Color color , 




}){
 
   return  GoogleFonts.abyssinicaSil(
    color: color , 
    fontSize: fontSize ,
    fontWeight: FontWeight.w400
    
   );

}



TextStyle setTextStyleWithFontWeight({
required double fontSize , 
required Color color , 
double ? engFont , 
required FontWeight fontWeight


}){

   return  GoogleFonts.abyssinicaSil(
    color: color , 
    fontSize: fontSize , 
    fontWeight: fontWeight
   );

}
