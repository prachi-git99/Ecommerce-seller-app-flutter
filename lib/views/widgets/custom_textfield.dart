
import 'package:emart_seller/consts/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget customTextField({String? hint,isPass,Icon,controller}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      TextFormField(
        obscureText: isPass,
        controller: controller,
        decoration: InputDecoration(
          filled: true,
          fillColor: textfieldGrey,
          prefixIcon: Icon,
          hintText: hint,//
          border: InputBorder.none,
        ),
      ),
      10.heightBox,
    ],
  );
}