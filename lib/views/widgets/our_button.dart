import 'package:emart_seller/consts/consts.dart';
import 'package:emart_seller/views/widgets/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget ourButton({onPress,color=purpleColor,textColor,String? title}){
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18)
      ),
      primary: color,
      padding: EdgeInsets.all(12.0)
    ),
      onPressed:onPress,
      child:normalText(text: title),
  );
}