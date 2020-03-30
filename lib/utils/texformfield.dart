import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextForm extends StatelessWidget {
  String txt;
  bool senha;
  TextInputType keyboardType;
  FormFieldValidator<String> validator;
  TextEditingController controller;
  String initialValue;
  bool border;

  TextForm(this.txt,
      {this.senha = false,
      this.keyboardType = TextInputType.text,
      this.validator,
      this.controller,
      this.initialValue,
      this.border = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.yellow,
      initialValue: initialValue,
      controller: controller,
      validator: validator,
      obscureText: senha,
      keyboardType: keyboardType,
      
      decoration: InputDecoration(
        border: border == true
            ? OutlineInputBorder(
              
                borderSide: BorderSide(color: Colors.greenAccent),
              )
            : null,
        labelText: txt,
        labelStyle: TextStyle(color: Colors.white, fontSize: 17),
      ),
    );
  }
}
