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
    image: 'assets/images/brands/kfc.png', 
    productTitle: '88 Products'
  ), 
   BrandFeature(
    titleBrand: 'McDonald', 
    image: 'assets/images/brands/mcdonald.png', 
    productTitle: '114 Products'
  ), 
   BrandFeature(
    titleBrand: 'Burger King', 
    image: 'assets/images/brands/burger_king.png', 
    productTitle: '56 Products'
  ), 
   BrandFeature(
    titleBrand: 'Dominion Pizza', 
    image: 'assets/images/brands/pizza.png', 
    productTitle: '106 Products'
  ), 
]; 