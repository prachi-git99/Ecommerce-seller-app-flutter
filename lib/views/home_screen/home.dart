
import 'package:emart_seller/consts/consts.dart';
import 'package:emart_seller/controllers/home_controller.dart';
import 'package:emart_seller/views/home_screen/home_screen.dart';
import 'package:emart_seller/views/order_screen/orders_screen.dart';
import 'package:emart_seller/views/products_screen/products_screen.dart';
import 'package:emart_seller/views/profile_screen/profile_screen.dart';
import 'package:emart_seller/views/widgets/text_style.dart';
import 'package:get/get.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    var controller = Get.put(HomeController());

    var navScreens=[
      HomeScreen(),
      ProductsScreen(),
      OrderScreen(),
      ProfileScreen()      
    ];

    var bottomNavbar =[
      BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label:dashboard),
      BottomNavigationBarItem(icon: Image.asset(icProducts,color: darkFontGrey,width:20,),label: products),
      BottomNavigationBarItem(icon: Image.asset(icOrders,color: darkFontGrey,width:20,),label: orders),
      BottomNavigationBarItem(icon: Image.asset(icgeneralSettings,color: darkFontGrey,width:20,),label:settings),
    ];


    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   centerTitle: true,
      //   title: boldText(text:dashboard,color: fontGrey,size:18.0),
      // ),
      bottomNavigationBar: Obx(()=>
         BottomNavigationBar(
          onTap: (index){
            controller.navIndex.value=index;
          },
          currentIndex: controller.navIndex.value,
          type: BottomNavigationBarType.fixed,
            items: bottomNavbar,
          selectedItemColor: purpleColor,
          unselectedItemColor: darkFontGrey,
        ),
      ),
      body: Obx(
          ()=> Column(
          children: [
            Expanded(
                child:navScreens.elementAt(controller.navIndex.value),
            )
          ],
        ),
      ),
    );
  }
}
