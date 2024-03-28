

import 'package:bellymax/features/shop/models/banner_model.dart';
import 'package:bellymax/utils/exceptions/firebase_exception.dart';
import 'package:bellymax/utils/exceptions/format_exception.dart';
import 'package:bellymax/utils/exceptions/platform_exception.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class BannerRepository extends GetxController {
  static BannerRepository get instance => Get.find(); 

  // variables 
  final _db = FirebaseFirestore.instance; 

  /// Get all order related to current user
  Future<List<BannerModel>> fetchBanners() async {
    try{
      final result = await _db.collection('Banners').where('active', isEqualTo: true).get(); 
      return result.docs.map((documentSnapshot) => BannerModel.fromSnapshot(documentSnapshot)).toList(); 
    } on FirebaseException catch (e) {
      throw BFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const BFormatException(); 
    } on PlatformException catch (e) {
      throw BPlatformException(e.code).message; 
    } catch (e) {
      throw 'Something went wrong while fetching Banners.'; 
    }
  }
  
  /// Upload banners to the cloud firebase. 
}