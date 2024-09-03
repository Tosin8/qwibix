import 'package:get/get.dart';
import 'package:qwibix/common/widgets/loaders/loaders.dart';
import 'package:qwibix/data/repositories/brands/brand_repository.dart';
import 'package:qwibix/features/shop/models/brand_model.dart';

class BrandController extends GetxController{
  static BrandController get instance => Get.find();

final RxList<BrandModel> featuredBrands  = <BrandModel>[].obs; 
final RxList<BrandModel> allBrands = <BrandModel>[].obs;
RxBool isLoading = true.obs;
final brandRepository = Get.put(BrandRepository()); 

@override
  void onInit() {
    getFeaturedBrands(); 
    super.onInit(); 
  }
  

  // load brands
  Future<void> getFeaturedBrands() async {
    try {
      // show loader wile loading brands. 
      isLoading.value = true;

      final brands = await brandRepository.getAllBrands();
allBrands.assignAll(brands); 
featuredBrands.assignAll(allBrands.where((brand) => brand.isFeatured ?? false).take(4)); 

    } catch (e) {
      BLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString()); 
  }  finally {
    // stop loader
    isLoading.value = false;
  }
  }
  // get brands for category

  // get brand specific products from data source.

}