// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';

class FoodMenu {
  String title; 
  String image;
  FoodMenu({
    required this.title,
    required this.image,
  });
}

final List FoodMenus = [
  FoodMenu(
    title: 'Salad',
    image: 'assets/images/menu/salad.jpg',
  ), 
  FoodMenu(
    title: 'Burger',
    image: 'assets/images/menu/burger.jpg',
  ), 
  FoodMenu(
    title: 'Soup',
    image: 'assets/images/menu/soup.jpg',
  ), 
  FoodMenu(
    title: 'Chicken',
    image: 'assets/images/menu/chicken.jpg',
  ), 
  FoodMenu(
    title: 'Sea Food',
    image: 'assets/images/menu/sea_food.jpg',
  ), 
  FoodMenu(
    title: 'Drinks',
    image: 'assets/images/menu/drinks.jpg',
  ), 
  FoodMenu(
    title: 'Desserts',
    image: 'assets/images/menu/desserts.jpg',
  ), 
  FoodMenu(
    title: 'SandWish',
    image: 'assets/images/menu/sandwish.jpg',
  ), 
]; 

/// For DB Backend - Firebase. 
class CategoryModel {
  String id; 
  String name; 
  String image; 
  String parentId; 
  bool isFeatured; 
  CategoryModel({
    required this.id,
    required this.name,
    required this.image, 
  this.parentId = '',
    required this.isFeatured, 
    

  });  
  /// Empty Helper function.
  static CategoryModel empty() => CategoryModel(
    id: '',image: '', name: '', isFeatured: false
  ); 

  /// Convert model to JSON structure  for starting data in firebase.
  Map<String, dynamic> toJson() {
    return {
'Name': name, 
'Image': image,
'IsFeatured': isFeatured, 
'ParentId': parentId, 
    };
  }

  /// Map json oriented document snapshot from firebase to Usermodel
  factory CategoryModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document){
    if (document.data() != null) {
      final data = document.data()!; 

      // Map JSoN record to the Model
      return CategoryModel(
        id: document.id,
         name: data['Name'] ?? '',
          image: data['Image'] ?? '',
           isFeatured: data['IsFeatured'] ?? false
           ); 
    } else {
      return CategoryModel.empty();
    }
  }
  
}
