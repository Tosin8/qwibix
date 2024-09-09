import 'dart:convert';

import 'package:get/get.dart';
import 'package:qwibix/common/widgets/loaders/loaders.dart';

import '../../../../utils/local_storage/storage_utility.dart';

class FavouriteController extends GetxController{
FavouriteController get instance => Get.find();

// Variables
final favourites = <String, bool>{}.obs; 
@override
  void onInit() {
    
    super.onInit(); 
    initFavourites(); 
  }

  // initialize fav. by reading from storage. 
  Future<void> initFavourites() async {
   final json = BLocalStorage.instance().readData('favourites');
if(json != null) {
  final storedFavourites = jsonDecode(json) as Map<String, dynamic>; 
  favourites.assignAll(storedFavourites.map((key, value) => MapEntry(key, value as bool))); 
}
}

bool isFavourite(String productId){
  return favourites[productId] ?? false; 
}

void toggleFavouriteProduct(String productId){
if(!favourites.containsKey(productId)){
  favourites[productId] = true; 
  saveFavouritesToStorage(); 
  BLoaders.customToast(message: 'Product has been added to the WishList'); 
} else {
  BLocalStorage.instance().removeData(productId);
  favourites.remove(productId); 
  saveFavouritesToStorage(); 
  favourites.refresh(); 
  BLoaders.customToast(message: 'Product has been removed form the WishList'); 
}

}
void saveFavouritesToStorage(){
  
}
}