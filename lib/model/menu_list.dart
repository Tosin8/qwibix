// ignore_for_file: public_member_api_docs, sort_constructors_first
class FoodMenu {
  String title; 
  String image;
  FoodMenu({
    required this.title,
    required this.image,
  });
}

final List FoodMenus = [
  FoodMenu(
    title: 'Salad',
    image: 'assets/images/salad.jpg',
  ), 
  FoodMenu(
    title: 'Burger',
    image: 'assets/images/burger.jpg',
  ), 
  FoodMenu(
    title: 'Soup',
    image: 'assets/images/soup.jpg',
  ), 
  FoodMenu(
    title: 'Chicken',
    image: 'assets/images/chicken.jpg',
  ), 
  FoodMenu(
    title: 'Sea Food',
    image: 'assets/images/sea_food.jpg',
  ), 
  FoodMenu(
    title: 'Drinks',
    image: 'assets/images/drinks.jpg',
  ), 
  FoodMenu(
    title: 'Desserts',
    image: 'assets/images/desserts.jpg',
  ), 
  FoodMenu(
    title: 'SandWish',
    image: 'assets/images/sandwish.jpg',
  ), 
]; 