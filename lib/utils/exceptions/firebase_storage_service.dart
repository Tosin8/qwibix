import 'dart:io';
import 'dart:typed_data';


import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class BFirebaseStorageService extends GetxController {
  static BFirebaseStorageService get instance => Get.find();

  final _firebaseStorage = FirebaseStorage.instance; 

  // upload local assets from IDE. 
  // Return a Uint8List conaining the image data

  Future<Uint8List> getImageDataFromAssets(String path) async {
    try {
      
      final byeData = await rootBundle.load(path); 
      final imageData = byeData.buffer.asUint8List(byeData.offsetInBytes, byeData.lengthInBytes);
      return imageData; 
    } catch (e) {
      // handle exceptions gracefully
      throw 'Error loading image data: $e';
    }
  }

  /// upload image using imagedata on cloud firebase storage
  /// returns the download url of the image. 
  /// 
  Future<String> uploadImageData(String path, Uint8List image, String name) async {
    try {
      
      final ref = _firebaseStorage.ref(path).child(name);
      await ref.putData(image); 
      final url = await ref.getDownloadURL(); 
      return url; 
    } catch (e) {
      // handle exceptions gracefully
      if (e is FirebaseException) {
        throw 'Firebase Exception: ${e.message}';
      } else if (e is SocketException) {
        throw 'Network Eror: ${e.message}';
      } else if (e is FormatException) {
        throw 'Format Exception: ${e.message}';
      } else {
        throw 'Something went wrong! Please try again'; 
      }
    }
  }

  // upload image on cloud firebase storage. 
  // returns the download url of the image.
  Future<String> uploadImageFile(String path, XFile image) async {
    try {
      final ref = _firebaseStorage.ref(path).child(image.name);
      await ref.putFile(File(image.path));
      final url = await ref.getDownloadURL();
      return url;
    } catch (e) {
      // handle exceptions gracefully
      if (e is FirebaseException) {
        throw 'Firebase Exception: ${e.message}';
      } else if (e is SocketException) {
        
        throw 'Network Eror: ${e.message}';
      } else if (e is FormatException) {
        throw 'Format Exception: ${e.message}';
      } else {
        throw 'Something went wrong! Please try again';
      }
      }
    }
  }
