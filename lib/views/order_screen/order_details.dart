import 'package:emart_seller/consts/consts.dart';
import 'package:emart_seller/views/order_screen/components/order_place.dart';
import 'package:emart_seller/views/widgets/our_button.dart';
import 'package:emart_seller/views/widgets/text_style.dart';
import 'package:get/get.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: boldText(text: "Order Details",color: fontGrey,size:14.0),
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon: Icon(Icons.arrow_back,color: darkFontGrey,),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 60,
        width: context.screenWidth,
        child: ourButton(color: green,onPress: (){},title: "Confirm Order"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Column(
                children: [
                  //order delkivry section
                  Visibility(
                    visible: false,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        10.heightBox,
                        boldText(text: "Order Status:",color: fontGrey,size: 16.0),
                        SwitchListTile(
                          activeColor: green,
                            value:true,
                            onChanged: (value){},
                          title: boldText(text: "Placed",color: fontGrey)
                        ),
                        SwitchListTile(
                            activeColor: green,
                            value:true,
                            onChanged: (value){},
                            title: boldText(text: "Confirmed",color: fontGrey)
                        ),
                        SwitchListTile(
                            activeColor: green,
                            value:false,
                            onChanged: (value){},
                            title: boldText(text: "On Delivery",color: fontGrey)
                        ),
                        SwitchListTile(
                            activeColor: green,
                            value:false,
                            onChanged: (value){},
                            title: boldText(text: "Delivered",color: fontGrey)
                        ),
                      ],
                    ).box.outerShadowMd.padding(EdgeInsets.all(8.0)).border(color: lightGrey).roundedSM.white.make(),
                  ),
                  //order details section
                  Column(
                    children: [
                      orderPlacedDetails(
                          title1:"Order Code",
                          title2:"Shipping Method",
                          detail1:"data['order_code']",
                          detail2:"data['shipping_method']"
                      ),
                      orderPlacedDetails(
                          title1:"Order Date",
                          title2:"Payment Method",
                          detail1:"2023=03-25",
                          // detail1:intl.DateFormat().add_yMd().format(data['order_date'].toDate()),
                          detail2:"data['payment_method']"
                      ),
                      orderPlacedDetails(
                          title1:"Payment Status",
                          title2:"Delivery Status",
                          detail1:"Unpaid",
                          detail2:"Order Placed"
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                boldText(text: "Shipping Address",color: purpleColor),
                                "Name:{data['order_by_name']}".text.color(Colors.grey).fontFamily(semibold).make(),
                                "Email:{data['order_by_email']}".text.color(Colors.grey).fontFamily(semibold).make(),
                                "Address:{data['order_by_address']}".text.color(Colors.grey).fontFamily(semibold).make(),
                                "City:{data['order_by_city']}".text.color(Colors.grey).fontFamily(semibold).make(),
                                "State:{data['order_by_state']}".text.color(Colors.grey).fontFamily(semibold).make(),
                                "Pincode:{data['order_by_postalcode']}".text.color(Colors.grey).fontFamily(semibold).make(),
                                "Phone:{data['order_by_phone']}".text.color(Colors.grey).fontFamily(semibold).make(),

                              ],
                            ),
                            SizedBox(
                              width:130,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  boldText(text: "Total Amount",color: purpleColor),
                                  boldText(text: "500",color: redColor,size: 16.0),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ).box.outerShadowMd.border(color: lightGrey).roundedSM.white.make(),
                  Divider(),
                  10.heightBox,
                  boldText(text: "Ordered Products",color:fontGrey,size: 16.0),
                  10.heightBox,
                  ListView(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children:List.generate(5, (index){
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          orderPlacedDetails(
                              title1:"data['orders'][index]['title']",
                              title2:"data['orders'][index]['tprice']",
                              detail1:"{data['orders'][index]['qty']}x",
                              detail2:"Refundable"
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Container(
                              width: 30,
                              height:20,
                              color: Colors.purple,
                            ).box.shadowSm.make(),
                          ),
                          Divider(),
                        ],
                      );
                    }).toList(),
                  ).box.outerShadowMd.white.margin(EdgeInsets.only(bottom: 4)).make(),
                  20.heightBox,


                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
