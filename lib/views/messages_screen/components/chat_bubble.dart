import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emart_seller/consts/consts.dart';
import 'package:emart_seller/views/widgets/text_style.dart';

Widget chatBubble(){
  //
  // var t = data['created_on'] == null ? DateTime.now(): data['created_on'].toDate();
  //
  // var time = intl.DateFormat("h:mma").format(t);

  return Directionality(
    // textDirection: data['uid'] == currentUser!.uid ? TextDirection.ltr:TextDirection.rtl ,
    textDirection: TextDirection.ltr,
    child: Container(
      padding: EdgeInsets.all(12.0),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        // color: data['uid'] == currentUser!.uid ? purpleColor:white,
        color: purpleColor,
        borderRadius: BorderRadius.only(
          topLeft:Radius.circular(20),
          topRight:Radius.circular(20),
          bottomLeft:Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // "${data['msg']}".text.color(data['uid'] == currentUser!.uid ?whiteColor:redColor,).size(16).make(),
          normalText(text: "Your message...."),
          10.heightBox,
          // time.text.color(data['uid'] == currentUser!.uid ?whiteColor:redColor).make(),
          normalText(text: "10:34")
        ],
      ),
    ),
  );
}
