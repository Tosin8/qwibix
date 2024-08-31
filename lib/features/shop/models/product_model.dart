// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'brand_model.dart';
import 'product_attribute_model.dart';
import 'product_variation_model.dart';

class ProductModel {
  String id; 
  int stock; 
  String? sku; 
  double price; 
  String title; 
  DateTime? date; 
  double salePrice; 
  String thumbnail; 
  bool? isFeatured; 
  BrandModel? brand; 
  String? description; 
  String? categoryId; 
  List<String>? images; 
  String productType; 
  List<ProductAttributeModel>? productAttributes; 
  List<ProductVariationModel>? productVariations;


  ProductModel({
    required this.id,
    required this.stock,
    this.sku,
    required this.price,
    required this.title,
    this.date,
    this.salePrice = 0.0,
    required this.thumbnail,
    this.isFeatured,
    this.brand,
    this.description,
    this.categoryId,
    this.images,
    required this.productType,
    this.productAttributes,
    this.productVariations,
  });


}
