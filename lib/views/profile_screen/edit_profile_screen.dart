import 'package:emart_seller/consts/consts.dart';
import 'package:emart_seller/views/widgets/custom_textfield.dart';
import 'package:emart_seller/views/widgets/profile_textfield.dart';
import 'package:emart_seller/views/widgets/text_style.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        title: boldText(text: editProfile,color: fontGrey),
        actions: [
          TextButton(onPressed: (){}, child: normalText(text: save,color:fontGrey)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(imgProduct,width: 150,).box.roundedFull.clip(Clip.antiAlias).make(),
            10.heightBox,
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: white,
                ),
                onPressed:(){},
                child: normalText(text:changeImage,color: fontGrey),
            ),
            10.heightBox,
            Divider(color: white,),
            profileTextField(label: name,hint: "eg. PrachiV"),
            10.heightBox,
            profileTextField(label: password,hint: passwordHint),
            10.heightBox,
            profileTextField(label: confirmPass,hint: passwordHint),

          ],
        ),
      ),

    );
  }
}
