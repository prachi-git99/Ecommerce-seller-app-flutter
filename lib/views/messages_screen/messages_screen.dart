import 'package:emart_seller/consts/consts.dart';
import 'package:emart_seller/views/messages_screen/chat_screen.dart';
import 'package:emart_seller/views/widgets/text_style.dart';
import 'package:get/get.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading:IconButton(
            icon: Icon(Icons.arrow_back),
            color: darkFontGrey,
            onPressed: (){Get.back();},
          ),
          title:boldText(text: messages,size: 16.0,color: fontGrey)
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: List.generate(10,
                    (index) => ListTile(
                      onTap: (){
                        Get.to(()=>ChatScreen());
                      },
                      leading: CircleAvatar(
                          backgroundColor: purpleColor,
                          child: Icon(Icons.person,color:white,)
                      ),
                      title: boldText(text:"Username",color: fontGrey),
                      subtitle: normalText(text:"last message",color: darkFontGrey),
                      trailing: normalText(text: "10:45 PM",color: darkFontGrey),
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
