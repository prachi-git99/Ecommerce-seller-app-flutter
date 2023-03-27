import 'package:emart_seller/consts/consts.dart';
import 'package:emart_seller/views/widgets/text_style.dart';

Widget orderPlacedDetails({title1, title2, detail1, detail2}){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            boldText(text: title1,color:purpleColor),
            boldText(text: detail1,color:redColor),

          ],
        ),
        SizedBox(
          width: 130,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              boldText(text: title2,color:purpleColor),
              boldText(text: detail2,color:fontGrey),
            ],
          ),
        ),

      ],
    ),
  );
}