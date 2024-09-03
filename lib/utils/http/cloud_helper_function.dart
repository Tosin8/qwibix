import 'package:flutter/material.dart';

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

}