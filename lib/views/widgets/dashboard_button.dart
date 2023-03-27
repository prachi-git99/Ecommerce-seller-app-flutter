import 'package:emart_seller/consts/consts.dart';
import 'package:emart_seller/views/widgets/text_style.dart';

Widget dashboardButton(context,{title,count,icon}){
  var size=MediaQuery.of(context).size;
  return Row(
    children: [
      Expanded(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            boldText(text:title,size:14.0),
            boldText(text:count,size:16.0),
          ],
        ),
      ),
      Image.asset(icon,width:35,color: white,),
    ],
  ).box.color(purpleColor).rounded.size(size.width * 0.4,70).padding(EdgeInsets.all(12)).make();
}