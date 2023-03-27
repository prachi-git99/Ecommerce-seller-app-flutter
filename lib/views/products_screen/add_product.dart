import 'package:emart_seller/consts/consts.dart';
import 'package:emart_seller/views/widgets/custom_textfield.dart';
import 'package:emart_seller/views/widgets/profile_textfield.dart';
import 'package:emart_seller/views/widgets/text_style.dart';
import 'package:get/get.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        title: boldText(text: "Add Product",color: fontGrey,size: 16.0),
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon: Icon(Icons.arrow_back,color: darkFontGrey,),
        ),
        actions: [
          TextButton(onPressed: (){},
              child: boldText(text: save,color: purpleColor,size: 16.0)
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            profileTextField(hint:"eg. BMW",label:"Product name"),


          ],
        ),

      ),

    );
  }
}
