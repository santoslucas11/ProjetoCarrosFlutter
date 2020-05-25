import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  
    String label;
    String hint;
    bool password;
    TextEditingController controller;
    FormFieldValidator<String> validator;
    TextInputType keyboardType;
    TextInputAction textInputAction;
    FocusNode focusNode;
    FocusNode netxFocus;

    AppText(this.label, this.hint, {this.password  = false, this.controller, this.validator, this.keyboardType, this.textInputAction, this.focusNode, this.netxFocus});

    

  @override
  Widget build(BuildContext context) {
      return TextFormField(
      controller: controller,
      obscureText: password,
      validator: validator,
      keyboardType: keyboardType,
      keyboardAppearance: Brightness.dark,
      textInputAction: textInputAction,
      focusNode: focusNode,
      onFieldSubmitted: (String text) {
        if (netxFocus != null) {
          FocusScope.of(context).requestFocus(netxFocus);
        }
      },
      style: TextStyle(fontSize: 20, color: Colors.blue[300]),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        labelText: label,
        hintText: hint,
        labelStyle: TextStyle(fontSize: 20, color: Colors.blue[300]),
        fillColor: Colors.blue,
      ),
    );
  }
}