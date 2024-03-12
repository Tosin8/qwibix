// ignore_for_file: public_member_api_docs, sort_constructors_first
class TodaySpecial {
  final String image;
  final String title; 
  final String description;
  final String brandTitle; 
  final String price;
  final String discount; 
  TodaySpecial({   required this.title, 
    required this.description, 
    required this.brandTitle, 
    required this.image,
    required this.price,
    required this.discount, 
   
    
  });

}


final List TodaySpecialList = [
  TodaySpecial(
   title: 'Burger',
  description: '',
  brandTitle: '',
   image: 'assets/images/menu/burger.jpg',
   price: '\$10.00',
   discount: '10%',
  ),
   
]; 