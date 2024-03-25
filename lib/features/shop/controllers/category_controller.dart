import 'package:bellymax/common/widgets/loaders/loaders.dart';
import 'package:bellymax/data/repositories/category/category_repository.dart';
import 'package:bellymax/features/shop/models/menu_list.dart';
import 'package:bellymax/utils/popups/full_screen_loader.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  static CategoryController get instance => Get.find();

  final _categoryRepository = Get.put(CategoryRepository()); 
  RxList<CategoryModel> allCategories = <CategoryModel>[].obs;

  @override 
  void onInit() {
    fetchCategories(); 
    super.onInit(); 
  }

  /// Load category data
  
  Future<void>fetchCategories() async {
    try{
      
    }
    catch(e){
      BLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      BFullScreenLoader.stopLoading();
    }
  }
}