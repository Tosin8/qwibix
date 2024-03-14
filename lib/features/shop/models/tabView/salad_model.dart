class Salad {
  String image; 
  String title; 
  String price; 
  String category; 
  String rate; 
  String description; 
  
 Salad({
    required this.rate,
    required this.image,
    required this.title,
    required this.price, 
    required this.category, 
    required this.description, 
  });
}

final List Salads = [
Salad(
  rate: '6', 
  image: 'assets/products/salad/1.jpg', 
  title: 'Kale Salad', 
  price: '\$20.0',
   category: 'McDonald', 
   description: 'A spicy South African beef sausage.There is balsamic vinegar on this salad and cashew nuts, cherry tomatoes, fried mushrooms, sesame seeds and dhanya (cilantro/coriander)', 

   ), 
   Salad(
  rate: '6', 
  image: 'assets/products/salad/2.jpg', 
  title: 'Quinoa Salad', 
  price: '\$32.0',
   category: 'McDonald', 
   description: '', 
   ),
    Salad(
  rate: '6', 
  image: 'assets/products/salad/3.jpg', 
  title: 'Kale Salad', 
  price: '\$20.0',
   category: 'McDonald', 
   description: '', 
   ),
    Salad(
  rate: '6', 
  image: 'assets/products/salad/4.jpg', 
  title: 'Vegan Salad', 
  price: '\$20.0',
   category: 'McDonald', 
   description: '', 
   ), 
   Salad(
  rate: '6', 
  image: 'assets/products/salad/5.jpg', 
  title: 'Kale Salad', 
  price: '\$20.0',
   category: 'BellyMax', 
   description: '', 
   ), 
   Salad(
  rate: '6', 
  image: 'assets/products/salad/6.jpg', 
  title: 'Kale Salad', 
  price: '\$20.0',
   category: 'BellyMax', 
   description: '', 
   ),
    Salad(
  rate: '6', 
  image: 'assets/products/salad/7.jpg', 
  title: 'Kale Salad', 
  price: '\$20.0',
   category: 'McDonald', 
   description: '', 
   ), 
   Salad(
  rate: '6', 
  image: 'assets/products/salad/8.jpg', 
  title: 'Boerewors Salad', 
  price: '\$20.0',
   category: 'McDonald', 
   description: '', 
   ), 

]; 
