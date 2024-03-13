// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TodaySpecial {
  final String image;
  final String title; 
  final String description;
  final String brandTitle; 
  final String price;
  final String discount; 
  final String category; 
  TodaySpecial({   required this.title, 
    required this.description, 
    required this.brandTitle, 
    required this.image,
    required this.price,
    required this.discount, 
    required this.category, 
   
    
  });

}


final List TodaySpecialList = [
  TodaySpecial(
   title: 'Chicken Soup with Cheese',
  description: '',
  brandTitle: 'KFC',
   image: 'assets/products/all/1.jpg', 
   price: '\$10.00',
   discount: '10%',
   category: 'Chicken', 
  ),

   TodaySpecial(
   title: '3 lap chicken with Vegetable',
  description: '',
  brandTitle: 'BellyMax',
   image: 'assets/products/all/15.jpg', 
   price: '\$30.00',
   discount: '12%',
   category: 'Chicken'
  ),
  TodaySpecial(
   title: 'Sea food Salad',
  description: '',
  brandTitle: 'BellyMax',
   image:'assets/products/all/14.jpg',
   price: '\$30.00',
   discount: '12%',
   category: 'Salad'
  ),
  TodaySpecial(
   title: 'Double Cups Cup Cake',
  description: '',
  brandTitle: 'McDonald',
   image: 'assets/products/all/12.jpg', 
   price: '\$23.00',
   discount: '12%',
   category: 'Dessert'
  ),

  TodaySpecial(
   title: 'Grenish Salad',
  description: '',
  brandTitle: '',
   image: 'assets/products/all/11.jpg',
   price: '\$30.00',
   discount: '12%',
   category: 'Salad'
  ),
   
]; 