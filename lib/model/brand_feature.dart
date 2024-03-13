// ignore_for_file: public_member_api_docs, sort_constructors_first
class BrandFeature {
  String titleBrand; 
  String image; 
  String productTitle; 
  BrandFeature({
    required this.titleBrand,
    required this.image,
    required this.productTitle,
  });
  
}

final List BrandList = [
  BrandFeature(
    titleBrand: 'KFC', 
    image: '', 
    productTitle: '88 Products'
  ), 
   BrandFeature(
    titleBrand: 'McDonald', 
    image: '', 
    productTitle: '114 Products'
  ), 
   BrandFeature(
    titleBrand: 'Burger King', 
    image: '', 
    productTitle: '56 Products'
  ), 
   BrandFeature(
    titleBrand: 'Dominion Pizza', 
    image: '', 
    productTitle: '106 Products'
  ), 
]; 