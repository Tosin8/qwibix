import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';

class BFirebaseStorageService extends GetxController {
  static BFirebaseStorageService get instance => Get.find();

  final _firebaseStorage = FirebaseStorage.instance; 

  // upload local assets from IDE. 
}