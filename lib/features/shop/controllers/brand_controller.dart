import 'package:get/get.dart';
import 'package:qwibix/features/shop/models/brand_model.dart';

class BrandController extends GetxController{
  static BrandController get instance => Get.find();

final RxList<BrandModel> featuredBrands  = <BrandModel>[].obs; 
final RxList<BrandModel> allBrands = <BrandModel>[].obs;

  // load brands

  // get brands for category

  // get brand specific products from data source.

}