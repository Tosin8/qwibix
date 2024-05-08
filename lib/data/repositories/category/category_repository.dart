import 'package:bellymax/features/shop/models/category_model.dart';
import 'package:bellymax/utils/exceptions/firebase_exception.dart';
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
      final snapshot = await _db.collection("Categories").get();
      final list = snapshot.docs.map((e) => CategoryModel.fromSnapshot(e)).toList();
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
  }
