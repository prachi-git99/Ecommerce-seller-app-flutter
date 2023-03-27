import 'package:emart_seller/consts/consts.dart';
import 'package:emart_seller/views/products_screen/add_product.dart';
import 'package:emart_seller/views/products_screen/products_details.dart';
import 'package:emart_seller/views/widgets/appbar_widget.dart';
import 'package:emart_seller/views/widgets/text_style.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart' as intl;

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.to(()=>AddProduct());
        },
        child: Icon(Icons.add),
        backgroundColor: purpleColor,
      ),
      appBar: appBarWidget(products),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: List.generate(20,
                    (index) => ListTile(
                      onTap: (){
                        Get.to(()=>ProductDetails());
                      },
                      leading: Image.asset(imgProduct,width: 100,height: 100,),
                      title: boldText(text: "Product Title",color: darkFontGrey),
                      subtitle: normalText(text: "40.0",color:fontGrey),
                      trailing: VxPopupMenu(
                        arrowSize: 0.0,
                        child: Icon(Icons.more_vert),
                        menuBuilder: ()=>Column(
                          children:List.generate(popupMenuicon.length,
                                  (index) => Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Icon(popupMenuicon[index]),
                                        10.widthBox,
                                        normalText(text: popupMenuTitles[index],color: darkFontGrey)
                                      ],
                                    ).onTap(() { }),
                                  )
                          )
                        ).box.white.rounded.width(200).make(),
                        clickType:VxClickType.singleClick,
                      ),
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
