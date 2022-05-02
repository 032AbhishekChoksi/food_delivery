import 'package:food_delivery/pages/food/popular_food_detail.dart';
import 'package:food_delivery/pages/food/recommended_food_detail.dart';
import 'package:food_delivery/pages/home/main_food_page.dart';
import 'package:get/get.dart';

class RouteHelper{
  static const String initial="/";
  static const String popularFood="/popular-food";
  static const String recommendedFood="/recommended-food";

  static String getInitial()=>'$initial';
  static String getPopulerFood(int pageId)=>'$popularFood?pageId=$pageId';
  static String getRecommendedFood()=>'$recommendedFood';

  static List<GetPage> routes=[
    GetPage(name: initial, page: ()=>MainFoodPage()),
    GetPage(name: popularFood, page: (){
     // print("popular food get called");
      var pageId = Get.parameters['pageId'];
     // print("Get Parameter Page Id " + pageId.toString());
      return PopularFoodDetail(pageId: int.parse(pageId!));
    },
    transition: Transition.fadeIn
    ),
    GetPage(name: recommendedFood, page: (){
    // print("popular food get called");
    return RecommendedFoodDetail();
    },
        transition: Transition.fadeIn
    ),
  ];
}