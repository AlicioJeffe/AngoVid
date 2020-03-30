import 'package:flutter/material.dart';


 push(BuildContext context, Widget page, {bool replace=false}){
  if(replace){
return Navigator.pushReplacement(context, MaterialPageRoute(
    builder: (context) => page
  ));
  }
return Navigator.push(context, MaterialPageRoute(
    builder: (context) => page
  ));
  
}