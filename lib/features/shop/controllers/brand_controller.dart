// // import 'package:get/get.dart';
// // import 'package:qwibix/common/widgets/loaders/loaders.dart';
// // import 'package:qwibix/data/repositories/brands/brand_repository.dart';
// // import 'package:qwibix/features/shop/models/brand_model.dart';

// // class BrandController extends GetxController{
// //   static BrandController get instance => Get.find();

// // final RxList<BrandModel> featuredBrands  = <BrandModel>[].obs; 
// // final RxList<BrandModel> allBrands = <BrandModel>[].obs;
// // RxBool isLoading = true.obs;
// // final brandRepository = Get.put(BrandRepository()); 

// // @override
// //   void onInit() {
// //     getFeaturedBrands(); 
// //     super.onInit(); 
// //   }
  

// //   // load brands
// //   Future<void> getFeaturedBrands() async {
// //     try {
// //       // show loader wile loading brands. 
// //       isLoading.value = true;

// //       final brands = await brandRepository.getAllBrands();
// // allBrands.assignAll(brands); 
// // featuredBrands.assignAll(allBrands.where((brands) => brands.isFeatured ?? false).take(4)); 

// //     } catch (e) {
// //       BLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString()); 
// //   }  finally {
// //     // stop loader
// //     isLoading.value = false;
// //   }
// //   }
// //   // get brands for category

// //   // get brand specific products from data source.

// // }


// // from gpt
// import 'package:get/get.dart';
// import 'package:qwibix/common/widgets/loaders/loaders.dart';
// import 'package:qwibix/data/repositories/brands/brand_repository.dart';
// import 'package:qwibix/features/shop/models/brand_model.dart';

// class BrandController extends GetxController {
//   static BrandController get instance => Get.find();

//   final RxList<BrandModel> featuredBrands = <BrandModel>[].obs;
//   final RxList<BrandModel> allBrands = <BrandModel>[].obs;
//   RxBool isLoading = true.obs;
//   final brandRepository = Get.put(BrandRepository());

//   @override
//   void onInit() {
//     getFeaturedBrands();
//     super.onInit();
//   }

//   // Load brands
//   Future<void> getFeaturedBrands() async {
//     try {
//       // Show loader while loading brands
//       isLoading.value = true;

//       // Fetch all brands from the repository
//       final brands = await brandRepository.getAllBrands();

//       // Print each brand's image URL for debugging
//       for (var brand in brands) {
//         print("Brand Name: ${brand.name}");
//         print("Image URL: ${brand.image}");

//         // Check if the URL is null or empty
//         if (brand.image.isEmpty) {
//           print("Error: Image URL is missing for brand: ${brand.name}");
//         } else {
//           print("Image URL is valid: ${brand.image}");
//         }
//       }

//       // Assign brands to lists
//       allBrands.assignAll(brands);
//       featuredBrands.assignAll(allBrands
//           .where((brand) => brand.isFeatured ?? false)
//           .take(4));
//     } catch (e) {
//       BLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
//       print("Error fetching brands: $e");
//     } finally {
//       // Stop loader
//       isLoading.value = false;
//     }
//   }

//   // Get brands for category
//   // Get brand-specific products from data source
// }


// chatgpt
import 'package:get/get.dart';
import 'package:qwibix/common/widgets/loaders/loaders.dart';
import 'package:qwibix/data/repositories/brands/brand_repository.dart';
import 'package:qwibix/features/shop/models/brand_model.dart';

class BrandController extends GetxController {
  static BrandController get instance => Get.find();

  final RxList<BrandModel> featuredBrands = <BrandModel>[].obs; 
  final RxList<BrandModel> allBrands = <BrandModel>[].obs;
  RxBool isLoading = true.obs;
  
  final brandRepository = Get.put(BrandRepository());  // Inject repository

  @override
  void onInit() {
    getFeaturedBrands();  // Fetch featured brands when the controller initializes
    super.onInit(); 
  }

  // Fetch brands from repository
  Future<void> getFeaturedBrands() async {
    try {
      // Start loader while loading brands
      isLoading.value = true;

      // Fetch all brands from the repository
      final brands = await brandRepository.getAllBrands();

      // Print out the brands to debug (Optional: You can remove this later)
      print("All Brands: $brands");

      // Assign fetched brands to the observable list
      allBrands.assignAll(brands);

      // Filter the featured brands and assign the first 4
      featuredBrands.assignAll(
        allBrands.where((brand) => brand.isFeatured ?? false).take(4),
      );

      // Check the image URLs for each brand (Optional debug check)
      for (var brand in featuredBrands) {
        print("Brand: ${brand.name}, Image URL: ${brand.imageUrl}");
      }

    } catch (e) {
      // Display an error message in case of failure
      BLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString()); 
    } finally {
      // Stop loader when done loading
      isLoading.value = false;
    }
  }
}
