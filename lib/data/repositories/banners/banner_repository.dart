import 'package:bellymax/features/shop/models/banner_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class BannerRepository extends GetxController {
  static BannerRepository get instance => Get.find(); 

  // variables 
  final _db = FirebaseFirestore.instance; 

  /// Get all order related to current user
  Future<List<BannerModel>> fetchBanners() async {
    
  }
  
  /// Upload banners to the cloud firebase. 
}