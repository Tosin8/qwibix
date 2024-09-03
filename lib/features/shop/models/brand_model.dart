import 'package:cloud_firestore/cloud_firestore.dart';

class BrandModel {
  String id; 
  String name; 
  String image; 
  bool? isFeatured; 
  int? productsCount; 
  BrandModel({required this.id,required this.name,required this.image,this.isFeatured,
  this.productsCount});


  // Empty Helper function.
  static BrandModel empty() => BrandModel(id: '', 
  name: '', image: '', 
  ); 

  // convert model to json structure for starting data in firebase. 
  toJson() {
    return {
      'Name': name,
      'Id': id,
      'Image': image,
      'IsFeatured': isFeatured,
      'ProductsCount': productsCount
    };
  }

  /// Map json oriented document snapshot from firebase to usermodel.
  factory BrandModel.fromJson(Map<String, dynamic> document) {
    final data = document; 
    if (data.isEmpty) return BrandModel.empty();
    return BrandModel(
      id: data['Id'] ?? '',
      name: data['Name'] ?? '',
      image: data['Image'] ?? '',
      isFeatured: data['IsFeatured'] ?? false,
      productsCount: data['ProductsCount'] ?? 0,
    );
  }

  // map json oriented document snapshot from firebase to usermodel.
  factory BrandModel.fromSnapshot(DocumentSnapshot <Map<String, dynamic>> document) {
    if (document.data() != null){
 final data = document.data()!; 

 // map JSON Record to the Model. 
    return BrandModel(
      id: document.id, 
      name: data['Name'] ?? '',
      image: data['Image'] ?? '',
      isFeatured: data['IsFeatured'] ?? false,
      productsCount: data['ProductsCount'] ?? 0,
    );
  }
  else {
    return BrandModel.empty(); 
  }
}
}