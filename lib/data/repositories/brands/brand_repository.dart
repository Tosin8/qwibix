import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:qwibix/features/shop/models/brand_model.dart';
import 'package:qwibix/utils/exceptions/firebase_exception.dart';
import 'package:qwibix/utils/exceptions/platform_exception.dart';

class BrandRepository extends GetxController{
  static BrandRepository get instance => Get.find();

  // variables. 
  final _db = FirebaseFirestore.instance;

  // get all categories
  Future<List<BrandModel>> getAllBrands() async {
    try {
      final snapshot = await _db.collection('Brands').get();
    final result = snapshot.docs.map((e) => BrandModel.fromSnapshot(e)).toList();
    return result; 
    } on FirebaseException catch (e) {
      throw BFirebaseException(e.code).message;
    }  on FormatException catch (e) {
      throw const FormatException();
    
  } on PlatformException catch (e) {
    throw BPlatformException(e.code).message;
  } catch (e) {
    throw 'Something went wrong. Please try again.';
  }
  }
  //
  //get brands for categories.  

}