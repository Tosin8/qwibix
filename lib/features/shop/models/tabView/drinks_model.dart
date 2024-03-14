class Drink {
  String image; 
  String title; 
  String price; 
  String category; 
  String rate; 
  String description; 
  
 Drink({
    required this.rate,
    required this.image,
    required this.title,
    required this.price, 
    required this.category, 
    required this.description, 
  });
}

final List Drinks = [
Drink(
  rate: '6', 
  image: 'assets/products/drink/1.jpg', 
  title: 'Coke', 
  price: '\$20.0',
   category: 'McDonald', 
   description: 'A spicy South African beef sausage.There is balsamic vinegar on this salad and cashew nuts, cherry tomatoes, fried mushrooms, sesame seeds and dhanya (cilantro/coriander)', 

   ), 
   Drink(
  rate: '6', 
  image: 'assets/products/drink/2.jpg', 
  title: 'Fanta', 
  price: '\$32.0',
   category: 'McDonald', 
   description: 'A spicy South African beef sausage.There is balsamic vinegar on this salad and cashew nuts, cherry tomatoes, fried mushrooms, sesame seeds and dhanya (cilantro/coriander)', 
   ),
    
Drink(
  rate: '6', 
  image: 'assets/products/drink/3.jpg', 
  title: 'Hype Energy', 
  price: '\$32.0',
   category: 'McDonald', 
   description: 'A spicy South African beef sausage.There is balsamic vinegar on this salad and cashew nuts, cherry tomatoes, fried mushrooms, sesame seeds and dhanya (cilantro/coriander)', 
   ),
]; 
