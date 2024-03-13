// ignore_for_file: public_member_api_docs, sort_constructors_first
class BrandFeature {
  String title; 
  String image; 
  String productTitle; 
  BrandFeature({
    required this.title,
    required this.image,
    required this.productTitle,
  });
  
}

final List BrandList = [
  BrandFeature(
    title: 'KFC', 
    image: '', 
    productTitle: '88 Products'
  ), 
   BrandFeature(
    title: 'McDonald', 
    image: '', 
    productTitle: '114 Products'
  ), 
   BrandFeature(
    title: 'Burger King', 
    image: '', 
    productTitle: '56 Products'
  ), 
   BrandFeature(
    title: 'Dominion Pizza', 
    image: '', 
    productTitle: '106 Products'
  ), 
]; 