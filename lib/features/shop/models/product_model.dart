// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:qwibix/features/shop/screens/home/product_details/widget/product_attribute.dart';

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
    required this.salePrice,
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
