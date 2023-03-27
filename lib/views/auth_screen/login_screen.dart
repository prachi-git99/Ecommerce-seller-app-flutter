import 'package:emart_seller/consts/consts.dart';
import 'package:emart_seller/views/home_screen/home.dart';
import 'package:emart_seller/views/widgets/custom_textfield.dart';
import 'package:emart_seller/views/widgets/our_button.dart';
import 'package:emart_seller/views/widgets/text_style.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: purpleColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.heightBox,
              normalText(text: welcome,size: 16.0),
              20.heightBox,
              Row(
                children: [
                  Image.asset(iclogo,width:70,height:70,).box.border(color: white).rounded.padding(EdgeInsets.all(8.0)).make(),
                  10.widthBox,
                  boldText(text: appname,size:16.0)
                ],
              ),
              40.heightBox,
              normalText(text:loginTo,size:16.0,color: lightGrey ),
              10.heightBox,
              Column(
                children: [
                  customTextField(hint:emailHint,Icon:Icon(Icons.email,color: purpleColor,),isPass:false),
                  customTextField(hint:passwordHint,Icon:Icon(Icons.lock,color: purpleColor,),isPass:true),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed:(){},
                        child: normalText(text: forgotPassword,color:purpleColor)
                    ),
                  ),
                  10.heightBox,
                  SizedBox(
                      width:context.screenWidth-100,
                      child: ourButton(title: login,onPress:(){Get.to(()=>Home());})
                  ),
                ],
              ).box.rounded.outerShadowMd.padding(EdgeInsets.all(8.0)).white.make(),
              10.heightBox,
              Center(child: normalText(text: anyProblem,color:lightGrey)),
              Spacer(),
              Center(child: boldText(text: credit)),
              20.heightBox
            ],
          ),
        ),
      ),
    );
  }
}
