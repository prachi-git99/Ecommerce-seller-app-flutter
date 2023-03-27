import 'package:emart_seller/consts/consts.dart';
import 'package:emart_seller/views/widgets/text_style.dart';

Widget profileTextField({label,hint,controller,isDesc=false}){
  return TextFormField(
    maxLines: isDesc?4:1,
    decoration: InputDecoration(
      isDense: true,
      label: normalText(text:label),
      enabledBorder:OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(color: white),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(color: white),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(color: white),
      ),
      hintText:hint,
      hintStyle: TextStyle(color: lightGrey)
    ),
  );

}