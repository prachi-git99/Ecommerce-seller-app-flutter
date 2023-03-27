import 'package:emart_seller/consts/consts.dart';
import 'package:emart_seller/views/widgets/profile_textfield.dart';
import 'package:emart_seller/views/widgets/text_style.dart';

class ShopSettings extends StatelessWidget {
  const ShopSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        title: boldText(text: shopSettings,color: fontGrey),
        actions: [
          TextButton(onPressed: (){}, child: normalText(text: save,color:fontGrey)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children:[
            profileTextField(label: shopname,hint: nameHInt),
            10.heightBox,
            profileTextField(label: address,hint: shopAddressHint),
            10.heightBox,
            profileTextField(label: mobile,hint: shopMobileHInt),
            10.heightBox,
            profileTextField(label: website,hint: shopWebsiteHint),
            10.heightBox,
            profileTextField(label: description,hint:shopDescHint,isDesc: true),


          ],
        ),
      ),

    );
  }
}
