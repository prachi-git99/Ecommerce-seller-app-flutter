import 'package:emart_seller/consts/consts.dart';

Widget normalText({text,color=white,size=14.0}){
  return "$text".text.color(color).size(size).make();
}

Widget boldText({text,color=white,size=14.0}){
  return "$text".text.color(color).size(size).semiBold.make();
}