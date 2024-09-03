import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class BrandRepository extends GetxController{
  static BrandRepository get instance => Get.find();

  // variables. 
  final _db = FirebaseFirestore.instance; 
}