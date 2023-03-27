import 'package:emart_seller/consts/consts.dart';
import 'package:emart_seller/views/widgets/text_style.dart';
import 'package:intl/intl.dart' as intl;

AppBar appBarWidget(title){
  return AppBar(
  automaticallyImplyLeading: false,
  backgroundColor: white,
  title: boldText(text:title,color:fontGrey,size:14.0),
  actions: [
      Center(child:boldText(text:intl.DateFormat('EEE,MMM d,''yy').format(DateTime.now()),color: purpleColor,size:12.0)),
      10.widthBox,
    ],
  );
}