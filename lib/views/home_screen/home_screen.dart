import 'package:emart_seller/consts/consts.dart';
import 'package:emart_seller/views/widgets/appbar_widget.dart';
import 'package:emart_seller/views/widgets/dashboard_button.dart';
import 'package:emart_seller/views/widgets/text_style.dart';
import 'package:intl/intl.dart' as intl;

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(dashboard),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start ,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                dashboardButton(context,title:products,count:"70",icon: icProducts),
                dashboardButton(context,title:orders,count:"50",icon: icOrders),

              ],
            ),
            10.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                dashboardButton(context,title:rating,count:"79",icon:icStar),
                dashboardButton(context,title:totalSales,count:"5",icon:icOrders),
              ],
            ),
            10.heightBox,
            const Divider(thickness:1.5,),
            10.heightBox,
            boldText(text:popular,color:darkFontGrey,size: 16.0),
            20.heightBox,
            ListView(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              children: List.generate(
                  3,(index) => ListTile(
                onTap: (){},
                leading: Image.asset(imgProduct,width: 100,height: 100,),
                title: boldText(text: "Product Title",color: darkFontGrey),
                subtitle: normalText(text: "40.0",color:fontGrey),
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
