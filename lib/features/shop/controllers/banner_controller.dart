import 'package:get/get.dart';

import '../../../common/widgets/loaders/loaders.dart';

class BannerController extends GetxController{

  // variables
  final carouselCurrentIndex = 0.obs; 
  final isLoading = false.obs; 

// update page navigational dots
  void updatePageIndicator(index) {
    carouselCurrentIndex.value =index; 
  }

  // fetch banners
  Future<void> fetchBanners() async {
    try {
      // show loader while loading categories. 
      isLoading.value = true; 

    } catch (e) {
      BLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString()); 
    } finally {
      // remove loader
      isLoading.value = false; 
    }
  }

}