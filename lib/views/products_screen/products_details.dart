import 'package:emart_seller/consts/consts.dart';
import 'package:emart_seller/views/widgets/text_style.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: boldText(text: "Product title",color: fontGrey),
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon: Icon(Icons.arrow_back,color: darkFontGrey,),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VxSwiper.builder(
                  autoPlay: true,
                  height: 370,
                  aspectRatio: 16/9,
                  viewportFraction: 1.0,
                  itemCount:3,
                  itemBuilder: (context,index){
                    return Image.asset(imgProduct,width:double.infinity,fit: BoxFit.fill,);
                  }
              ),
              10.heightBox,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    boldText(text: "Product title",color: fontGrey),
                    10.heightBox,
                    VxRating(
                      // value: double.parse(data['p_rating']),
                      value: 3.0,
                      onRatingUpdate: (value){},
                      normalColor: textfieldGrey,
                      selectionColor: golden,
                      isSelectable: false,
                      count:5,
                      size:20,
                      maxRating: 5,
                      stepInt: false,
                    ),
                    10.heightBox,
                    boldText(text: "\$500.0",color: redColor,size: 18.0),
                    20.heightBox,
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: boldText(text: "Color",color: fontGrey)
                            ),
                            Row(
                              children:List.generate(3, (index) => VxBox()
                                  .size(40,40)
                                  .roundedFull
                                  .shadowSm
                                  .color(Vx.randomPrimaryColor)
                                  .margin(EdgeInsets.symmetric(horizontal:4))
                                  .make()),
                            ),
                          ],
                        ).box.padding(EdgeInsets.all(8)).make(),
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: boldText(text: "Quantity",color: fontGrey),
                            ),
                            normalText(text: "20 items",color: fontGrey)
                          ],
                        ).box.padding(EdgeInsets.all(8)).make()

                      ],
                    ).box.white.make(),
                    Divider(),
                    boldText(text: "Description",color: fontGrey),
                    10.heightBox,
                    normalText(text: "jgsu jhagsl jhvasl jyagsl yafslj ",color: fontGrey),
                    10.heightBox,
                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
