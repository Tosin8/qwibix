import 'package:get/get.dart';

import '../../../../utils/local_storage/storage_utility.dart';

class FavouriteController extends GetxController{
FavouriteController get instance => Get.find();

// Variables
final favourites = <String, bool>{}.obs; 
@override
  void onInit() {
    
    super.onInit(); 
    initFavorites(); 
  }

  // initialize fav. by reading from storage. 
  Future<void> initFavorites() async {
   final json = BLocalStorage.instance().readData('favourites');

}
}