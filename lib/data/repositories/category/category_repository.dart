

import 'package:bellymax/features/shop/models/category_model.dart';
import 'package:bellymax/utils/exceptions/firebase_exception.dart';
import 'package:bellymax/utils/exceptions/format_exception.dart';
import 'package:bellymax/utils/exceptions/platform_exception.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CategoryRepository extends GetxController{
  static CategoryRepository get instance => Get.find(); 

  /// Variables
  final _db = FirebaseFirestore.instance; 

  // Get all categories
  Future<List<CategoryModel>> getAllCategories() async {
    try {
      final snapshot = await _db.collection('Categories').get();
      final list = snapshot.docs.map((document) => CategoryModel.fromSnapshot(document)).toList();
      return list; 

    } on FirebaseException catch (e) {
      throw BFirebaseException(e.code).message;
    } on PlatformException catch (e) {
      throw BPlatformException(e.code).message;
    }  catch (e) {
      throw 'Something went wrong. Please try again.';
    }
    }

    // Upload Categories to the Cloud Firebase. 
    Future<void> uploadDummyData(List<CategoryModel> categories) async {
      try {
        
        // upload all the categories aling with their image
        final storage = Get.put(BFirebaseStorageService()); 

        // loop through each category
        for(var category in categories) {
          // get imagedata link from the local assets
          final file = await storage.getImageDataFromAssets(category.image); 

          // upload image and get its url
          final url = await storage.uploadImageData('Categories', file, category.name); 

          // assign url to the category.image attribue
          category.image = url; 

          // store category in the cloud firestore
          await _db.collection("Categories").doc(category.id).set(category.toJson());

        }
      } on FirebaseException catch (e) {
        throw BFirebaseException(e.code).message;
      } on PlatformException catch (e) {
        throw  BPlatformException(e.code).message;
      } catch (e) {
        throw 'Something went wrong. Please try again.';
      }
    }

  }
