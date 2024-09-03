import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BCloudHelperFunctions{

  /// helper function to check the state of a single database record. 
  /// it returns a widget based on the state of the snapshot. 
  /// if data is stil loading it returns a circularprogress indicator. 
  /// if no data is found, it returns a generic 'No data found' text.
  /// if an error occurs, it returns a generic 'Something went wrong' text.
  /// otherwise it returns null. 
  /// 
  
  static Widget? checkSingleRecordState<T>(AsyncSnapshot<T> snapshot) {
    if(snapshot.connectionState == ConnectionState.waiting) {
      return const CircularProgressIndicator();
    }
    if(!snapshot.hasData || snapshot.data == null ) {
      return const Center(child: Text('No Data Found!'));
    }
    if(snapshot.hasError) {
      return const Center(child: Text('Something went wrong.'));
    }
    return null;
  }



/// Helper function to check the state of multiple (List) database records. 
/// returns a widget based on the state of the snapshot.
/// if data is still loading, it returns a circularprogress indicator.
/// if no data is found, it returns a generic 'No data found' text.
/// if an error occurs, it returns a generic 'Something went wrong' text.
/// otherwise , it returns null. 

static Widget? checkMultiRecordState<T>({required AsyncSnapshot<List<T>> snapshot, Widget? loader, Widget? noData, Widget? error}) {
  if(snapshot.connectionState == ConnectionState.waiting) {
    return loader;
  }
  if(!snapshot.hasData || snapshot.data == null || snapshot.data!.isEmpty) {
    return noData;
  }
  if(snapshot.hasError) {
    return error;
  }
  return null;
}

// create a reference with an initial file path and name and retrieve the download url. 
static Future<String> getURLFromFilePathAndName(String path) async {
  try {
    if(path.isEmpty) return ''; 
    final ref = FirebaseStorage.instance.ref().child(path);
    final url = await ref.getDownloadURL();
    return url;
  } on FirebaseException catch (e) {
    throw 'Firebase Exception: ${e.message}';
  }  on PlatformException catch (e) {
    throw e.message!;
  } catch (e) {
    throw 'Something went wrong. Please try again';
  }
}
}