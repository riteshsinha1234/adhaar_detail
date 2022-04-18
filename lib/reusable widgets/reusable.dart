import 'package:flutter/material.dart';

//This is  how to make a class
class TextFliedWidget extends StatelessWidget {
  final String text;
  TextEditingController controller;

  TextFliedWidget(this.text,this.controller);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.orange, width: 2.0),
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.orange, width: 2.0)),
        labelText: text,
        labelStyle: TextStyle(color: Colors.grey),
        contentPadding: EdgeInsets.all(40),
      ),
    );
  }
}
