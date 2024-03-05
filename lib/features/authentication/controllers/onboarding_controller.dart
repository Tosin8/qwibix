import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find(); 

  /// variables
  
  /// Update current index when page scroll 

void updatePageIndicator(index) {} 

/// Jump to the specific dot selected page. 
void  dotNavigationClick(index) {} 

/// Updage current Index and Jump to next page. 
void nextPage() {}

/// Update Current Index and Jump to the last page
 void skipPage() {}
}