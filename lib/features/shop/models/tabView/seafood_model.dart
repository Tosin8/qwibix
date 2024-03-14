class SeaFood {
  String image; 
  String title; 
  String price; 
  String category; 
  String rate; 
  String description; 
  
 SeaFood({
    required this.rate,
    required this.image,
    required this.title,
    required this.price, 
    required this.category, 
    required this.description, 
  });
}

final List SeaFoods = [
SeaFood(
  rate: '6', 
  image: 'assets/products/seafood/1.jpg', 
  title: 'Boiled Shrimps', 
  price: '\$20.0',
   category: 'McDonald', 
   description: 'A spicy South African beef sausage.There is balsamic vinegar on this salad and cashew nuts, cherry tomatoes, fried mushrooms, sesame seeds and dhanya (cilantro/coriander)', 

   ), 
   SeaFood(
  rate: '6', 
  image: 'assets/products/seafood/2.jpg', 
  title: 'Grid Sea food salad', 
  price: '\$32.0',
   category: 'McDonald', 
   description: 'A spicy South African beef sausage.There is balsamic vinegar on this salad and cashew nuts, cherry tomatoes, fried mushrooms, sesame seeds and dhanya (cilantro/coriander)', 
   ),
    

]; 
