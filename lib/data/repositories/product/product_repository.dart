import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:qwibix/utils/exceptions/firebase_exception.dart';
import 'package:qwibix/utils/exceptions/firebase_storage_service.dart';
import 'package:qwibix/utils/exceptions/platform_exception.dart';

import '../../../features/shop/models/product_model.dart';

class ProductRepository  extends GetxController{
  static ProductRepository get instance => Get.find();

  // firestore instance for database interactions
  final _db = FirebaseFirestore.instance; 

  // get limited featured products
  Future<List<ProductModel>> getFeaturedProducts() async {
    try {
      final snapshot = await _db.collection('Products').where('IsFeatured', isEqualTo: true).limit(4).get();

      return snapshot.docs.map((e) => ProductModel.fromSnapshot(e)).toList();
    
  } on FirebaseException catch (e) {
    throw BFirebaseException(e.code).message;
  } on PlatformException catch (e) {
    throw BPlatformException(e.code).message;
  } catch (e) {
    throw 'Something went wrong, please try again'; 
  }
  }

  // Get products based on teh brand. 

   Future<List<ProductModel>> fetchProductsByQuery(Query query) async {
    try {
      final querySnapshot = await query.get(); 
      final List<ProductModel> productList = querySnapshot.docs.map((doc) => ProductModel.fromQuerySnapshot(doc)).toList(); 
      return productList; 
  } on FirebaseException catch (e) {
    throw BFirebaseException(e.code).message;
  } on PlatformException catch (e) {
    throw BPlatformException(e.code).message;
  } catch (e) {
    throw 'Something went wrong, please try again'; 
  }
  }

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

    // store products in firestore. 
    await _db.collection('Products').doc(product.id).set(product.toJson()); 
  }
} on FirebaseException catch (e) {
  throw e.message!; 
    
  } on SocketException catch (e) {
    throw e.message;
} on PlatformException catch (e) {
  throw e.message!; 
} catch (e) {
  throw e.toString(); 
}
  }
}