import 'package:get/get.dart';

class BannerController extends GetxController{

  // variables
  final carouselCurrentIndex = 0.obs; 

// update page navigational dots
  void updatePageIndicator(index) {
    carouselCurrentIndex.value =index; 
  }

  // fetch banners\
  
}