import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class CategoryRepository extends GetxController{
  static CategoryRepository get instance => Get.find(); 

  /// Variables
  final _db = FirebaseFirestore.instance; 
}