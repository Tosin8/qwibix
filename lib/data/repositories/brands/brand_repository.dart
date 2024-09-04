// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:qwibix/features/shop/models/brand_model.dart';
// import 'package:qwibix/utils/exceptions/firebase_exception.dart';
// import 'package:qwibix/utils/exceptions/platform_exception.dart';

// class BrandRepository extends GetxController{
//   static BrandRepository get instance => Get.find();

//   // variables. 
//   final _db = FirebaseFirestore.instance;

//   // get all categories
//   Future<List<BrandModel>> getAllBrands() async {
//     try {
//       final snapshot = await _db.collection('Brands').get();
//     final result = snapshot.docs.map((e) => BrandModel.fromSnapshot(e)).toList();
//     return result; 
//     } on FirebaseException catch (e) {
//       throw BFirebaseException(e.code).message;
//     }  on FormatException catch (_) {
//       throw const FormatException();
    
//   } on PlatformException catch (e) {
//     throw BPlatformException(e.code).message;
//   } catch (e) {
//     throw 'Something went wrong. Please try again.';
//   }
//   }
//   //
//   //get brands for categories.  

// }


// chatgpt
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:qwibix/features/shop/models/brand_model.dart';

class BrandRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Fetch all brands from Firestore
  Future<List<BrandModel>> getAllBrands() async {
    try {
      // Access the 'brands' collection from Firestore
      final QuerySnapshot snapshot = await _firestore.collection('Brands').get();
      
      // Map Firestore documents to BrandModel
      return snapshot.docs.map((doc) {
        print("Fetched brand document: ${doc.data()}");

        // Convert Firestore document to BrandModel
        return BrandModel.fromJson(doc.data() as Map<String, dynamic>);
      }).toList();
    } catch (e) {
      print("Error fetching brands from Firestore: $e");
      rethrow; // Rethrow the error to be caught in the controller
    }
  }
}
