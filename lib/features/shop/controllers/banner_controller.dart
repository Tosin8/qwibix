
import 'package:get/get.dart';
import 'package:qwibix/data/repositories/banners/banner_repository.dart';
import 'package:qwibix/features/shop/models/banner_model.dart';

import '../../../common/widgets/loaders/loaders.dart';

class BannerController extends GetxController{

  // variables
  final carouselCurrentIndex = 0.obs; 
  final isLoading = false.obs; 
  final RxList<BannerModel> banners = <BannerModel>[].obs; 

  @override
  void onInit() {
    fetchBanners(); 
    super.onInit(); 
  }

// update page navigational dots
  void updatePageIndicator(index) {
    carouselCurrentIndex.value =index; 
  }

  // fetch banners
  Future<void> fetchBanners() async {
    try {
      // show loader while loading categories. 
      isLoading.value = true; 

      // fetch banners
      final bannerRepo = Get.put(BannerRepository()); 
      final banners = await bannerRepo.fetchBanners(); 

      // assign banners
      this.banners.assignAll(banners); 

    } catch (e) {
      BLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString()); 
    } finally {
      // remove loader
      isLoading.value = false; 
    }
  }

}