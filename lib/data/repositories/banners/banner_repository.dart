import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class BannerRepository extends GetxController {
  static BannerRepository get instance => Get.find(); 

  // variables 
  final _db = FirebaseFirestore.instance; 

  /// Get all order related to current user
  
  /// Upload banners to the cloud firebase. 
}