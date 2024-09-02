import 'package:get/get.dart';
import 'package:qwibix/features/shop/models/product_model.dart';

class ImagesController  extends GetxController{ 
  static ImagesController get to => Get.find();

  // variables
  RxString selectedProductImage = ''.obs; 

  // get all images from product and variations
  List<String> getAllProductImages(ProductModel product){
  }
    /// show images popup. 
    
    void showEnlargedImage(String image){}
  
}