import 'package:flutter/material.dart';
import 'package:hungry/views/utils/AppColor.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final String hint;
  final TextEditingController controller;
  final bool obsecureText;
  final bool validate;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;

  final TextInputType keyboardType;

  final String type;

  CustomTextField({
    @required this.title,
    @required this.hint,
    this.controller,
    this.obsecureText = false,
    this.validate=false,
    this.padding,
    this.margin,
    this.keyboardType,
    this.type,
    
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text(
              '$title',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(color: AppColor.primaryExtraSoft, borderRadius: BorderRadius.circular(10)),
            child: TextField(
              controller: controller,
              
              style: TextStyle(fontSize: 14),
              cursorColor: AppColor.primary,
              obscureText: obsecureText,
              decoration: InputDecoration(
                hintText: '$hint',
                errorText: validate ? 'Field cant be empty':null,
                hintStyle: TextStyle(fontSize: 14, color: Colors.grey[400]),
                contentPadding: EdgeInsets.only(left: 16),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
