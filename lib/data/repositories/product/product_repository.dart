import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:qwibix/utils/exceptions/firebase_storage_service.dart';

import '../../../features/shop/models/product_model.dart';

class ProductRepository  extends GetxController{
  static ProductRepository get instance => Get.find();

  // firestore instance for database interactions
  final _db = FirebaseFirestore.instance; 

  // get limited featured products

  // upload dummy data to the cloud firebase. 
  Future<void> uploadDummyData(List<ProductModel>products) async {
try {
  // upload all the products along with their images
  final storage = Get.put(BFirebaseStorageService()); 

  // loop through each product 
  for (var product in products) {
    // get image data link from local assets
    final thumbnail = await storage.getImageDataFromAssets(product.thumbnail); 

    // upload image and get its url 
    final url = await storage.uploadImageData('Products/Images', thumbnail, product.thumbnail.toString()); 

    // assign url to product thumbnail attribute
    product.thumbnail = url; 

    // product list of images
    if(product.images != null && product.images!.isNotEmpty){
      List<String> imagesUrl = []; 
      for(var image in product.images!){
        // get image data link from local assets
        final assetImage = await storage.getImageDataFromAssets(image); 

        // upload image and get its url
        final url = await storage.uploadImageData('Products/Images', assetImage, image); 

        // assign url to product.thumbnail attribute
        imagesUrl.add(url); 
      }
    }
  }
}
    
  }
}