import 'package:emart_seller/consts/consts.dart';
import 'package:emart_seller/views/order_screen/order_details.dart';
import 'package:emart_seller/views/widgets/appbar_widget.dart';
import 'package:emart_seller/views/widgets/text_style.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart' as intl;

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(orders),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: List.generate(20,
                  (index) => Container(
                    margin: EdgeInsets.only(bottom:5),
                    child: ListTile(
                        onTap: (){
                          Get.to(()=>OrderDetails());
                        },
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        tileColor: textfieldGrey,
                        title: boldText(text: "9876543245676543",color:purpleColor),
                        subtitle: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.calendar_month),
                                10.widthBox,
                                boldText(text:intl.DateFormat().add_yMd().format(DateTime.now()),color:fontGrey),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.payment),
                                10.widthBox,
                                boldText(text:unpaid,color:redColor),
                              ],
                            ),
                          ],
                        ),
                      trailing: boldText(text: "40.0",color: purpleColor,size: 16.0),
                      ),
                  ),
            ),
          ),
        ),
      ),

    );
  }
}
