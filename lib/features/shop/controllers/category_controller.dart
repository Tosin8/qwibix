
import 'package:get/get.dart';
import 'package:qwibix/common/widgets/loaders/loaders.dart';
import 'package:qwibix/data/repositories/category/category_repository.dart';
import 'package:qwibix/data/repositories/product/product_repository.dart';
import 'package:qwibix/features/shop/models/category_model.dart';
import 'package:qwibix/features/shop/models/product_model.dart';

class CategoryController extends GetxController {
  static CategoryController get instance => Get.find();

  final isLoading = false.obs;

  final _categoryRepository = Get.put(CategoryRepository()); 
  RxList<CategoryModel> allCategories = <CategoryModel>[].obs;
  RxList<CategoryModel> featuredCategories = <CategoryModel>[].obs;

  @override 
  void onInit() {
    fetchCategories(); 
    super.onInit(); 
  }

  /// Load category data
  
  Future<void>fetchCategories() async {
    try{
      // show loader while loading categories
      isLoading.value = true; 

      // fetech category from datasource 
      final categories = await _categoryRepository.getAllCategories(); 

      // update categories
      allCategories.assignAll(categories); 

      // filter the categories list. 
      featuredCategories.assignAll(allCategories.where((category) => category.isFeatured &&  category.parentId.isEmpty).take(8).toList()); 
    }
    catch(e){
      BLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally {

      // Remove loader 
      isLoading.value = false; 
    }
  }

  // Load selected category data
  

  // Get category or sub category products. 
  Future<List<ProductModel>> getCategoryProducts({required String categoryId, int limit = 4}) async {
    try{
    // fetch limited 4 products against each subcategory. 
    final products = await ProductRepository.instance.getProductsForCategory(categoryId: categoryId, limit: limit); 
    return products; 
  } catch (e) {
    BLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString()); 
    return []; 
  }
  }
}
