


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:qwibix/features/shop/models/banner_model.dart';

class BannerRepository extends GetxController {
  static BannerRepository get instance => Get.find(); 

  // variables 
  final _db = FirebaseFirestore.instance; 

  /// Get all order related to current user
 
  
  Future<List<BannerModel>> fetchBanners() async {
  try {
    final result = await _db.collection('Banners').where('Active', isEqualTo: true).get();
    print("Fetched ${result.docs.length} banners"); // Add this line for debugging
    return result.docs.map((documentSnapshot) => BannerModel.fromSnapshot(documentSnapshot)).toList(); 
  } catch (e) {
    print("Error fetching banners: $e"); // Add this line for debugging
    throw 'Something went wrong while fetching Banners.';
  }
}

  /// Upload banners to the cloud firebase. 
}