

import 'package:qwibix/features/shop/models/category_model.dart';

import '../../features/shop/models/banner_model.dart';

class BDummyData {

  /// Category
  static final List<CategoryModel> categories = [
    CategoryModel(
      id: '1', 
       name: 'Burger', 
       image: 'assets/images/menu/burger.jpg', isFeatured: true), 
       CategoryModel(
      id: '2', 
       name: 'Chicken', 
       image: 'assets/images/menu/chicken.jpg', isFeatured: true), 
       CategoryModel(
      id: '3', 
       name: 'Desserts', 
       image: 'assets/images/menu/desserts.jpg', isFeatured: true), 
       CategoryModel(
      id: '4', 
       name: 'Drinks', 
       image: 'assets/images/menu/drinks.jpg', isFeatured: true), 
       CategoryModel(
      id: '5', 
       name: 'Salad', 
       image: 'assets/images/menu/salad.jpg', isFeatured: true), 
       CategoryModel(
      id: '6', 
       name: 'SandWish', 
       image: 'assets/images/menu/sandwish.jpg', isFeatured: true), 
       CategoryModel(
      id: '7', 
       name: 'Sea Food', 
       image: 'assets/images/menu/sea_food.jpg', isFeatured: true), 
       CategoryModel(
      id: '8', 
       name: 'Sour', 
       image: 'assets/images/menu/soup.jpg', isFeatured: true), 
  ]; 

  // Banners
  static final List<BannerModel> banners = [
    BannerModel(
      imageUrl: 'assets/images/banner/banner1.jpg',
       targetScreen: '', active: true), 
       BannerModel(
      imageUrl: 'assets/images/banner/banner2.jpg',
       targetScreen: '', active: true), 
       BannerModel(
      imageUrl: 'assets/images/banner/banner3.jpg',
       targetScreen: '', active: true), 
       BannerModel(
      imageUrl: 'assets/images/banner/banner4.jpg',
       targetScreen: '', active: true), 
       BannerModel(
      imageUrl: 'assets/images/banner/banner5.jpg',
       targetScreen: '', active: true), 
  ]; 
}